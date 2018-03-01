cask 'codekit' do
  version '3.5.1,26268'
  sha256 'cf551122cb603e48a30955f9060514b5f4c1951537a2898a2d85393fe78b56a3'

  url "https://codekitapp.com/binaries/codekit-#{version.after_comma}.zip"
  appcast "https://codekitapp.com/api/#{version.major}/appcast.xml",
          checkpoint: '2ccada7d8160728f792c78ac4e9481f53ef4d023f5f479ef5739ece3bc8d28fb'
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
