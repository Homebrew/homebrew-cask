cask 'fldigi' do
  version '4.0.18,4.3.7'
  sha256 '8c6b317d6825b664df192d87e726b7c7caba4dcf6722d8f362d4565b24622d0d'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_macos.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
