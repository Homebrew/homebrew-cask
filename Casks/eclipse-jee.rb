cask 'eclipse-jee' do
  version '4.7.0,oxygen:R'
  sha256 'b23f7765399739b2986cae13dfe8d8ec29e7a45843fdbae9bef9906177a53172'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-jee-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Java EE Developers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  # Renamed to avoid conflict with other Eclipse.
  app 'Eclipse.app', target: 'Eclipse JEE.app'

  caveats do
    depends_on_java
  end
end
