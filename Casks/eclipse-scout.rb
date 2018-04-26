cask 'eclipse-scout' do
  version '4.7.3a,oxygen:3a'
  sha256 '98d244b15a7cec11e2a703f2fb6c5ab1a7595d87b20aa192bf641500b9380dc0'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-scout-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse for Scout Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse Scout.app'
end
