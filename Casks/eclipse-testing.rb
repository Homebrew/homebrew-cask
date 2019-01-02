cask 'eclipse-testing' do
  version '4.9.0,2018-09:R'
  sha256 '7d8dedcbb70b269a8aac25b2903ee4d9f5f1c9a3ebafe0dc1080e88b2b6a8507'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Testers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Testing.app'
end
