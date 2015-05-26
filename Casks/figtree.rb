cask :v1 => 'figtree' do
  version '1.4.2'
  sha256 '3b97cb9b57bbce2466d850faac699128b7b72310b094cf9260c1a172561674f1'

  url 'http://tree.bio.ed.ac.uk/download.php?id=90'
  name 'FigTree'
  homepage 'http://tree.bio.ed.ac.uk/software/figtree/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "FigTree v#{version}.app"
  qlplugin 'QuickLook Plugin/FigTreeQuickLookPlugin.qlgenerator'
end
