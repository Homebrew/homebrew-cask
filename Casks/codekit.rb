cask 'codekit' do
  version '3.5.2,26330'
  sha256 '78c1328d4c77c2c81face88d94693475ca1f4ca949b1681202111474ae5a0037'

  url "https://codekitapp.com/binaries/codekit-#{version.after_comma}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '07a0fcac80858b0aeb05ba3966a8e6750072a8f270560cd1af461c05ebddd887'
  name 'CodeKit'
  homepage 'https://codekitapp.com/'

  auto_updates true

  app 'CodeKit.app'

  zap trash: [
               "~/Library/Application Support/com.incident57.CodeKit#{version.major}",
               "~/Library/Caches/com.incident57.CodeKit#{version.major}",
               "~/Library/Cookies/com.incident57.CodeKit#{version.major}.binarycookies",
               "~/Library/Preferences/com.incident57.CodeKit#{version.major}.plist",
               "~/Library/Saved Application State/com.incident57.CodeKit#{version.major}.savedState",
             ]
end
