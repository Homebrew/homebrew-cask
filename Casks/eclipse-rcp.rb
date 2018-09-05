cask 'eclipse-rcp' do
  version '4.7.3a,oxygen:3a'
  sha256 '9aa9fa4d3f2e1e1b3776ea999276b82b1ff9179bf499da348ff9c16b9c503e60'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-rcp-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for RCP and RAP Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse RCP.app'
end
