cask 'codekit' do
  version '3.6.1,26680'
  sha256 'b1e3b7ff805bca2a017a7d6c2018d58bcdceb7cb135135db6747b49129085272'

  url "https://codekitapp.com/binaries/codekit-#{version.after_comma}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml"
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
