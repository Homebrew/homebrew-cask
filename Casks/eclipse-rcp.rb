cask 'eclipse-rcp' do
  version '4.7.3,oxygen:3'
  sha256 '0d5309817d0f49a43f776ec71bb5d38d690c29c701f143f7f276dc0c58644ed3'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-rcp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse RCP.app'
end
