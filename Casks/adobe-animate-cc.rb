cask 'adobe-animate-cc' do
  version '15.1'
  sha256 'c4a0affca7c37884471b495a0c242ddb110c8591bc41da91ecab81d12da60590'

  language('cs')                { 'cs_CZ' }
  language('da')                { 'da_DK' }
  language('de')                { 'de_DE' }
  language('en-AE')             { 'en_AE' }
  language('en-GB')             { 'en_GB' }
  language('en-IL')             { 'en_IL' }
  language('en', default: true) { 'en_US' }
  language('es-MX')             { 'es_MX' }
  language('es')                { 'es_ES' }
  language('fi')                { 'fi_FI' }
  language('fr-CA')             { 'fr_CA' }
  language('fr-MA')             { 'fr_MA' }
  language('fr')                { 'fr_FR' }
  language('hu')                { 'hu_HU' }
  language('it')                { 'it_IT' }
  language('ja')                { 'ja_JP' }
  language('nb')                { 'nb_NO' }
  language('nl')                { 'nl_NL' }
  language('pl')                { 'pl_PL' }
  language('pt')                { 'pt_BR' }
  language('ro')                { 'ro_RO' }
  language('ru')                { 'ru_RU' }
  language('sv')                { 'sv_SE' }
  language('tr')                { 'tr_TR' }
  language('uk')                { 'uk_UA' }

  url "https://trials3.adobe.com/AdobeProducts/FLPR/#{version.dots_to_underscores}/osx10-64/Animate_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Animate CC'
  homepage 'https://www.adobe.com/products/animate.html'

  installer script: {
                      executable: "#{staged_path}/Adobe Animate CC 2015/Install.app/Contents/MacOS/Install",
                      args:       ['--mode=silent', "--deploymentFile=#{staged_path}/Adobe Animate CC 2015/deploy/#{language}_Deployment.xml"],
                    }

  uninstall script: {
                      executable: "#{staged_path}/Adobe Animate CC 2015/Install.app/Contents/MacOS/Install",
                      args:       ['--mode=silent', "--deploymentFile=#{staged_path}/Adobe Animate CC 2015/deploy/uninstall.xml"],
                    }
end
