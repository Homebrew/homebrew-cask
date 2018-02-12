cask 'codekit' do
  version '3.5,26261'
  sha256 'a0126be0e9c5083ccc92034fc0e9322217faff7993ecc67a03f3d05fc36613f5'

  url "https://codekitapp.com/binaries/codekit-#{version.after_comma}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '8dd7bdf0a32afeb398add59503a694ea0ced55620a1e38ac35e1402d2f186607'
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
