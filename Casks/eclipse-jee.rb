cask 'eclipse-jee' do
  version '4.7.2,oxygen:2'
  sha256 '30412262e4fe6a0db5f03ee2dbbcd7635c88f8ad75af99a89ab25f4065f65ff7'

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
