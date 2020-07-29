cask 'figtree' do
  version '1.4.4'
  sha256 '4a11741143982a9b7fea78e60c8315ce8e8436eeb96ab3ee5376c53c83e54b9b'

  # github.com/rambaut/figtree/ was verified as official when first introduced to the cask
  url "https://github.com/rambaut/figtree/releases/download/v#{version}/FigTree.v#{version}.dmg"
  appcast 'https://github.com/rambaut/figtree/releases.atom'
  name 'FigTree'
  homepage 'http://tree.bio.ed.ac.uk/software/figtree/'

  app "FigTree v#{version}.app"
  qlplugin 'QuickLook Plugin/FigTreeQuickLookPlugin.qlgenerator'
end
