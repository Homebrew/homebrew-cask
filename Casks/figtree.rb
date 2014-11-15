cask :v1 => 'figtree' do
  version :latest
  sha256 :no_check

  url 'http://tree.bio.ed.ac.uk/download.php?id=86'
  homepage 'http://tree.bio.ed.ac.uk/software/figtree/'
  license :unknown

  app 'FigTree v1.4.0.app'
  qlplugin 'QuickLook Plugin/FigTreeQuickLookPlugin.qlgenerator'
end
