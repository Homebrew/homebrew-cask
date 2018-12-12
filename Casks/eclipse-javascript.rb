cask 'eclipse-javascript' do
  version '4.9.0,2018-09:R'
  sha256 '5a6644cb046d9bfdeec07f60cd7f61656a9786743d78ade6087701db234dc80c'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for JavaScript and Web Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JavaScript.app'
end
