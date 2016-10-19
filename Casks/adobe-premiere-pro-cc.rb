cask 'adobe-premiere-pro-cc' do
  version '9'
  sha256 '33200d0b2aa9f118f8f06629946c5e25b8acbcc54e96d0ab49df652288ac81e0'

  language('de') { 'de_DE' }
  language('ja') { 'ja_JP' }
  language('it') { 'it_IT' }
  language('fr') { 'fr_FR' }
  language('fr-CA') { 'fr_CA' }
  language('fr-MA') { 'fr_MA' }
  language('zh') { 'zh_CN' }
  language('en-GB') { 'en_GB' }
  language('en-AE') { 'en_AE' }
  language('en-IL') { 'en_IL' }
  language('en', default: true) { 'en_US' }
  language('es') { 'es_ES' }
  language('es-MX') { 'es_MX' }
  language('ko') { 'ko_KR' }
  language('ru') { 'ru_RU' }
  language('pt') { 'pt_BR' }

  url "http://trials3.adobe.com/AdobeProducts/PPRO/#{version}/osx10-64/PremierePro_#{version}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Premiere Pro CC 2015'
  homepage 'https://www.adobe.com/products/premierepro.html'

  media_signature = '38C72D42-0672-43B1-9E05-E7631684F9A1'

  preflight do
    install_xml = "#{staged_path}/install.xml"

    IO.write install_xml, <<-EOS.undent
      <?xml version="1.0" encoding="utf-8"?>
      <Deployment>
        <Properties>
          <Property name="INSTALLDIR">[AdobeProgramFiles]</Property>
          <Property name="installLanguage">#{language}</Property>
        </Properties>
        <Payloads>
          <Payload adobeCode="{#{media_signature}}">
            <Action>install</Action>
          </Payload>
        </Payloads>
      </Deployment>
    EOS

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Premiere Pro CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{install_xml}"
  end

  uninstall_preflight do
    uninstall_xml = "#{staged_path}/uninstall.xml"

    IO.write uninstall_xml, <<-EOS.undent
      <?xml version="1.0" encoding="utf-8"?>
      <Deployment>
        <Properties>
          <Property name="removeUserPrefs">0</Property>
          <Property name="mediaSignature">{#{media_signature}}</Property>
        </Properties>
        <Payloads>
          <Payload adobeCode="{#{media_signature}}">
            <Action>remove</Action>
          </Payload>
        </Payloads>
      </Deployment>
    EOS

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Premiere Pro CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{uninstall_xml}"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
