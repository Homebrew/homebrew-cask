cask 'adobe-media-encoder-cc' do
  version '9'
  sha256 'bb074010df2a65cf519b443e1bd86f69581196673ca9468ade6d36555b5b26e7'

  language('cs') { 'cs_CZ' }
  language('da') { 'da_DK' }
  language('de') { 'de_DE' }
  language('en-AE') { 'en_AE' }
  language('en-GB') { 'en_GB' }
  language('en-IL') { 'en_IL' }
  language('en', default: true) { 'en_US' }
  language('es-MX') { 'es_MX' }
  language('es') { 'es_ES' }
  language('fi') { 'fi_FI' }
  language('fr-CA') { 'fr_CA' }
  language('fr-MA') { 'fr_MA' }
  language('fr') { 'fr_FR' }
  language('hu') { 'hu_HU' }
  language('it') { 'it_IT' }
  language('ja') { 'ja_JP' }
  language('ko') { 'ko_KR' }
  language('nb') { 'nb_NO' }
  language('nl') { 'nl_NL' }
  language('pl') { 'pl_PL' }
  language('pt') { 'pt_BR' }
  language('ru') { 'ru_RU' }
  language('sv') { 'sv_SE' }
  language('tr') { 'tr_TR' }
  language('uk') { 'uk_UA' }
  language('zh-TW') { 'zh_TW' }
  language('zh') { 'zh_CN' }

  url "http://trials3.adobe.com/AdobeProducts/AME/#{version}/osx10-64/AdobeMediaEncoder_#{version}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Media Encoder CC 2015'
  homepage 'https://www.adobe.com/products/media-encoder.html'

  media_signature = '0FAC7130-BEC5-47A5-8813-1D339B8326ED'

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

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Media Encoder CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{install_xml}"
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

    system '/usr/bin/sudo', '-E', '--', "#{staged_path}/Adobe Media Encoder CC 2015/Install.app/Contents/MacOS/Install", '--mode=silent', "--deploymentFile=#{uninstall_xml}"
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
