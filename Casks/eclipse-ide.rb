cask 'eclipse-ide' do
  version '4.10.0,2018-12:R'
  sha256 'c0bea89eac5789cb0101ba02c4b69fdc5b7672fa4561b9a2fbd551525dea1c8c'

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-committers-#{version.after_comma.before_colon}-#{version.after_colon}-macosx-cocoa-x86_64.dmg&r=1"
  name 'Eclipse IDE for Eclipse Committers'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse.app'
end
