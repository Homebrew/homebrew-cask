cask 'deezer' do
  version '0.14.4'
  sha256 'c3b5d1f08f1c789aabfdf7ddcfc13b740f74cf1075064d978f384c51eac0ff52'

  url "https://www.deezer.com/desktop/download/artifact/darwin/x64/#{version}"
  name 'Deezer'
  homepage 'https://www.deezer.com/download'

  app 'Deezer.app'

  zap trash: [
               '~/Library/Application Support/Deezer',
               '~/Library/Preferences/com.deezer.Deezer.plist',
             ]
end
