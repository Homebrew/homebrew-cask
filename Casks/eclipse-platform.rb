cask 'eclipse-platform' do
  version '4.6.3,201703010400'
  sha256 '59e4e3eeffdce26894f270ec1fa660f63e4dc9b57b0eda6f4692348bd7547160'

  url "http://download.eclipse.org/eclipse/downloads/drops#{version.major}/R-#{version.before_comma}-#{version.after_comma}/eclipse-SDK-#{version.before_comma}-macosx-cocoa-x86_64.tar.gz"
  name 'Eclipse SDK'
  homepage 'https://eclipse.org/eclipse/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
