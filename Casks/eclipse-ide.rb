cask 'eclipse-ide' do
  version '4.7.1,oxygen:1a'
  sha256 '7beeec0531181da673086568cfe14151ac8b96e76b0bfeaf3880d7ca495b9068'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
