cask 'adobe-after-effects-cc' do
  version '13.5'
  sha256 '398f9401f524ac10462b2b8cd91389b2b6aee841bd328b6daeaa8fa232bee41a'

  language('en', default: true) { 'en_US' }
  language('en-GB')             { 'en_GB' }
  language('en-AE')             { 'en_AE' }
  language('en-IL')             { 'en_IL' }
  language('fr')                { 'fr_FR' }
  language('fr-CA')             { 'fr_CA' }
  language('fr-MA')             { 'fr_MA' }
  language('de')                { 'de_DE' }
  language('es')                { 'es_ES' }
  language('es-MX')             { 'es_MX' }
  language('it')                { 'it_IT' }
  language('ja')                { 'ja_JP' }
  language('ko')                { 'ko_KR' }
  language('pt')                { 'pt_BR' }
  language('zh')                { 'zh_CN' }
  language('ru')                { 'ru_RU' }

  url "https://trials3.adobe.com/AdobeProducts/AEFT/#{version.dots_to_underscores}/osx10-64/AfterEffects_#{version.dots_to_underscores}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe After Effects CC 2015'
  homepage 'https://www.adobe.com/uk/products/aftereffects.html'

  media_signature = '147EC100-14BE-45EF-AB42-35BAEE7D02F0'

  preflight do
    IO.write "#{staged_path}/install.xml", <<-EOS.undent
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

    system_command "#{staged_path}/Adobe After Effects CC 2015/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{staged_path}/install.xml",
                         ],
                   sudo: true
  end

  uninstall_preflight do
    IO.write "#{staged_path}/uninstall.xml", <<-EOS.undent
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

    system_command "#{staged_path}/Adobe After Effects CC 2015/Install.app/Contents/MacOS/Install",
                   args: [
                           '--mode=silent',
                           "--deploymentFile=#{staged_path}/uninstall.xml",
                         ],
                   sudo: true
  end

  uninstall rmdir: '/Applications/Utilities/Adobe Installers'
end
