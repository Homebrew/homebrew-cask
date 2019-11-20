cask 'swish' do
  version '1.2'
  sha256 '655957cea144b81dd72a069596effab0ed840c469c1dd4359b7cf6d5fc282cd6'

  url "https://highlyopinionated.co/swish/Swish-#{version}.zip"
  appcast 'https://highlyopinionated.co/swish/appcast.xml'
  name 'Swish'
  homepage 'https://highlyopinionated.co/swish/'

  depends_on macos: '>= :high_sierra'

  app 'Swish.app'
end
