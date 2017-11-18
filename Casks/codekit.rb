cask 'codekit' do
  version '3.4.26097'
  sha256 'b761e34f145f43c16c11d3fe1946a59d754da25ac0b94bfc609bc68429cd7c39'

  url "https://codekitapp.com/binaries/codekit-#{version.patch}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '66e0a8ce33076f240677268afb523247881da9f50e667494879008907283e37e'
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
