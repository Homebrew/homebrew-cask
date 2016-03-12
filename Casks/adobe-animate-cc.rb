cask 'adobe-animate-cc' do
  version '2015'
  sha256 'c4a0affca7c37884471b495a0c242ddb110c8591bc41da91ecab81d12da60590'

  url 'http://prodesigntools.com/trials3/AdobeProducts/FLPR/15_1/osx10-64/Animate_15_LS20.dmg',
      user_agent: :fake,
      cookies:    { 'MM_TRIALS' => '1234' }
  name 'Adobe Animate CC'
  homepage 'https://www.adobe.com/products/animate.html'
  license :commercial

  installer script: "#{staged_path}/Adobe Animate CC 2015/Install.app/Contents/MacOS/Install",
            args:   ['--mode=silent', "--deploymentFile=#{staged_path}/Adobe Animate CC 2015/deploy/en_US_Deployment.xml"]

  uninstall script: {
                      executable: "#{staged_path}/Adobe Animate CC 2015/Install.app/Contents/MacOS/Install",
                      args:       ['--mode=silent', "--deploymentFile=#{staged_path}/Adobe Animate CC 2015/deploy/uninstall.xml"],
                    }
end
