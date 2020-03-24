cask 'swish' do
  version '1.4'
  sha256 '619bf894d805916dfd749c268b14d82a7bb39dd8b5cff9b6bc291e6a234e4591'

  # github.com/chrenn/swish-dl was verified as official when first introduced to the cask
  url "https://github.com/chrenn/swish-dl/releases/download/#{version}/Swish.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
