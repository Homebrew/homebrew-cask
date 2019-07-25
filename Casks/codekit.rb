cask 'codekit' do
  version '3.9,31486'
  sha256 'd1a91eb8605a5f6a9b6110fb6c6a190ec79e9811c600a987f0954021620860ed'

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
