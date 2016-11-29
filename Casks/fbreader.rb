cask 'fbreader' do
  version '0.99.5-alpha'
  sha256 'c05e23d66942b49533e0eabc9d39e2062c9a11086369c31b417a1937ac5886f9'

  url "https://fbreader.org/files/macos/FBReader%20#{version.gsub('-', '%20')}.dmg"
  name 'FBReader'
  homepage 'https://fbreader.org/content/macos'

  app 'FBReader.app'

  zap delete: [
                '~/.FBReader',
              ]
end
