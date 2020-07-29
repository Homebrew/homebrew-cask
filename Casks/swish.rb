cask 'swish' do
  version '1.5'
  sha256 '2b5d4cde08e268b5654f44dee79f242f0ba7388b452d82cad0112da1ba851d0c'

  # github.com/chrenn/swish-dl/ was verified as official when first introduced to the cask
  url "https://github.com/chrenn/swish-dl/releases/download/#{version}/Swish.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
