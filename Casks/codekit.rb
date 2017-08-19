cask 'codekit' do
  version '3.3-25900'
  sha256 '2b064f1248530dc1c67fa28757c3ef7c45db8eaab10711472bc4eafcb88d9836'

  url "https://codekitapp.com/binaries/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '27ff20c84b5d9c9f587d9818539ff7c533eea8658434a39f309c310bd93b5633'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'

  zap delete: [
                "~/Library/Application Support/com.incident57.CodeKit#{version.major}",
                "~/Library/Caches/com.incident57.CodeKit#{version.major}",
                "~/Library/Cookies/com.incident57.CodeKit#{version.major}.binarycookies",
                "~/Library/Preferences/com.incident57.CodeKit#{version.major}.plist",
                "~/Library/Saved Application State/com.incident57.CodeKit#{version.major}.savedState",
              ]
end
