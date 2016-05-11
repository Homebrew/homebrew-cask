cask 'gislook' do
  version :1.0.2
  sha256 :no_check

  url 'http://cartography.oregonstate.edu/gislook/GISLook_GISMeta.pkg'
  name 'GISLook'
  homepage 'http://cartography.oregonstate.edu/GISLook.html'
  license :other

  pkg 'GISLook_GISMeta.pkg'

  uninstall delete: [
             '/Library/QuickLook/GISLook.qlgenerator',
             '/Library/Spotlight/GISMeta.mdimporter',
           ]
end
