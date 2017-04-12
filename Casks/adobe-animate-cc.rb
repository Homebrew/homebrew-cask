cask 'adobe-animate-cc' do
  version '15.1'
  sha256 'c4a0affca7c37884471b495a0c242ddb110c8591bc41da91ecab81d12da60590'

  language 'cs' do
    'cs_CZ'
  end

  language 'da' do
    'da_DK'
  end

  language 'de' do
    'de_DE'
  end

  language 'en-AE' do
    'en_AE'
  end

  language 'en-GB' do
    'en_GB'
  end

  language 'en-IL' do
    'en_IL'
  end

  language 'en' do
    'en_US'
  end

  language 'es-MX' do
    'es_MX'
  end

  language 'es' do
    'es_ES'
  end

  language 'fi' do
    'fi_FI'
  end

  language 'fr-CA' do
    'fr_CA'
  end

  language 'fr-MA' do
    'fr_MA'
  end

  language 'fr' do
    'fr_FR'
  end

  language 'hu' do
    'hu_HU'
  end

  language 'it' do
    'it_IT'
  end

  language 'ja' do
    'ja_JP'
  end

  language 'nb' do
    'nb_NO'
  end

  language 'nl' do
    'nl_NL'
  end

  language 'pl' do
    'pl_PL'
  end

  language 'pt' do
    'pt_BR'
  end

  language 'ro' do
    'ro_RO'
  end

  language 'ru' do
    'ru_RU'
  end

  language 'sv' do
    'sv_SE'
  end

  language 'tr' do
    'tr_TR'
  end

  language 'uk' do
    'uk_UA'
  end

  url "http://trials3.adobe.com/AdobeProducts/FLPR/#{version.dots_to_underscores}/osx10-64/Animate_#{version.major}_LS20.dmg",
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
