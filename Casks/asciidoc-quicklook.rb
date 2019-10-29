cask 'asciidoc-quicklook' do
  version '1.0.1'
  sha256 '1fdc48041c3b9e35d151fb8325e71df81ea3c34cbb7975cbd6728a0382e04709'

  url "https://github.com/clydeclements/AsciiDocQuickLook/releases/download/v#{version}/AsciiDoc.qlgenerator.zip"
  appcast 'https://github.com/clydeclements/AsciiDocQuickLook/releases.atom'
  name 'AsciiDoc Quick Look'
  homepage 'https://github.com/clydeclements/AsciiDocQuickLook'

  depends_on formula: 'asciidoctor'

  # Must be installed to /Library/QuickLook (not ~/Library/QuickLook) due to
  # restraints imposed by the sand-boxing of Quick Look plug-ins.
  qlplugin 'AsciiDoc.qlgenerator', target: '/Library/QuickLook/AsciiDoc.qlgenerator'
end
