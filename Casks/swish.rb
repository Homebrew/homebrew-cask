cask 'swish' do
  version '1.2.1'
  sha256 '1d55c031ca3356b2486d703b15991a9a3bbc5c37877cc9124afda35050279c55'

  url "https://highlyopinionated.co/swish/Swish-#{version}.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
