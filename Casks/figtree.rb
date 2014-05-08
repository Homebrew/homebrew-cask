class Figtree < Cask
  url 'http://tree.bio.ed.ac.uk/download.php?id=86'
  homepage 'http://tree.bio.ed.ac.uk/software/figtree/'
  version 'latest'
  sha256 :no_check
  link 'FigTree v1.4.0.app'
  qlplugin 'QuickLook Plugin/FigTreeQuickLookPlugin.qlgenerator'
end
