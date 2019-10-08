cask 'swish' do
  version '1.1'
  sha256 'f4ec80138f82665503c71e5a3b061ff14d8062f34b8a7e4a99fec4498e167186'

  url "https://highlyopinionated.co/swish/Swish-#{version}.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
