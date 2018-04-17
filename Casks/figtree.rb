cask 'figtree' do
  version '1.4.3,96'
  sha256 '462eec7fe70530f86993e53dcce59ee45428628947574e2f91f5274c09898600'

  url "http://tree.bio.ed.ac.uk/download.php?id=#{version.after_comma}"
  name 'FigTree'
  homepage 'http://tree.bio.ed.ac.uk/software/figtree/'

  app "FigTree v#{version.before_comma}.app"
  qlplugin 'QuickLook Plugin/FigTreeQuickLookPlugin.qlgenerator'
end
