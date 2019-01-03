cask 'eclipse-ide' do
  version '4.9.0,2018-09:R'
  sha256 '5dba1a58829e5e641f2bad1616cee4d414caf2e3e7562119d45880ee5321623d'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
