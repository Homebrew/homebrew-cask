cask 'koala' do
  version '2.3.0'
  sha256 '6494408132c8818956a0a0423ed284120506bad0d5dc2349e8ffa7e16c9696bc'

  # github.com/oklai/koala was verified as official when first introduced to the cask
  url "https://github.com/oklai/koala/releases/download/v#{version}/Koala.dmg"
  appcast 'https://github.com/oklai/koala/releases.atom',
          checkpoint: 'eb41b1f9b5834ab1f4150a3c784dbcf301ff163097d06bf0222ed5bc618dcc64'
  name 'Koala'
  homepage 'http://koala-app.com/'

  app 'Koala.app'
end
