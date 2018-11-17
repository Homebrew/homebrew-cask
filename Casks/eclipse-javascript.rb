cask 'eclipse-javascript' do
  version '4.8.0,photon:R'
  sha256 'dcb16710f85362c7913fc511ae33729be08ade8744cdc90275da0742d0055375'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-javascript-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for JavaScript and Web Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JavaScript.app'
end
