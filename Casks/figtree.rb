cask 'figtree' do
  version '1.4.2'
  sha256 '0474f07e4f0f0b2af2c83bf06cb3a3f13d13b8e41a5f41e6deb099f9992071bc'

  url 'http://tree.bio.ed.ac.uk/download.php?id=90'
  name 'FigTree'
  homepage 'http://tree.bio.ed.ac.uk/software/figtree/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "FigTree v#{version}.app"
  qlplugin 'QuickLook Plugin/FigTreeQuickLookPlugin.qlgenerator'
end
