cask 'adobe-animate-cc' do
  version '15.1'
  sha256 'c4a0affca7c37884471b495a0c242ddb110c8591bc41da91ecab81d12da60590'

  url "http://trials3.adobe.com/AdobeProducts/FLPR/#{version.dots_to_underscores}/osx10-64/Animate_#{version.major}_LS20.dmg",
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Animate CC'
  homepage 'https://www.adobe.com/products/animate.html'

  language = case MacOS.language
             when %r{^cs} then 'cs_CZ'
             when %r{^da} then 'da_DK'
             when %r{^de} then 'de_DE'
             when 'en-AE' then 'en_AE'
             when 'en-GB' then 'en_GB'
             when 'en-IL' then 'en_IL'
             when 'es-MX' then 'es_MX'
             when %r{^es} then 'es_ES'
             when %r{^fi} then 'fi_FI'
             when 'fr-CA' then 'fr_CA'
             when 'fr-MA' then 'fr_MA'
             when %r{^fr} then 'fr_FR'
             when %r{^hu} then 'hu_HU'
             when %r{^it} then 'it_IT'
             when %r{^ja} then 'ja_JP'
             when %r{^nb} then 'nb_NO'
             when %r{^nl} then 'nl_NL'
             when %r{^pl} then 'pl_PL'
             when %r{^pt} then 'pt_BR'
             when %r{^ro} then 'ro_RO'
             when %r{^ru} then 'ru_RU'
             when %r{^sv} then 'sv_SE'
             when %r{^tr} then 'tr_TR'
             when %r{^uk} then 'uk_UA'
             else
               'en_US'
             end

  installer script: "#{staged_path}/Adobe Animate CC 2015/Install.app/Contents/MacOS/Install",
            args:   ['--mode=silent', "--deploymentFile=#{staged_path}/Adobe Animate CC 2015/deploy/#{language}_Deployment.xml"]

  uninstall script: {
                      executable: "#{staged_path}/Adobe Animate CC 2015/Install.app/Contents/MacOS/Install",
                      args:       ['--mode=silent', "--deploymentFile=#{staged_path}/Adobe Animate CC 2015/deploy/uninstall.xml"],
                    }
end
