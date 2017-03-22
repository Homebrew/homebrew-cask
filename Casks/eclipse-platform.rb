cask 'eclipse-platform' do
  version '4.6.2,201611241400'
  sha256 '37044a75ae992dccfbd2eaf4dac1a8858322d4ef071ec05949643db9490beace'

  url "http://download.eclipse.org/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.tar.gz"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/eclipse/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
