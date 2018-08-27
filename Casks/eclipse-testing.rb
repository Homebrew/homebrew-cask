cask 'eclipse-testing' do
  version '4.7.3a,oxygen:3a'
  sha256 '267e0a11d852904d6a435b13ec30a61d078af7239fa2efdee1e3b0ea3c01bec0'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-testing-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Testers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Testing.app'
end
