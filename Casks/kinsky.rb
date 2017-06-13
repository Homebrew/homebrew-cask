cask 'kinsky' do
  version '4.4.5'
  sha256 '2f4f04e76863eebe1da3d77e2fbd8eee71d57cdd3950f3bac64e0d569fa104de'

  url "https://oss.linn.co.uk/Releases/Kinsky/Davaar/Kinsky_#{version}_osx.pkg"
  appcast 'http://oss.linn.co.uk/Releases/Kinsky/Davaar/',
          checkpoint: 'd91f772d6ad90c010a079fca7c98fbc34c1dc9e9e91d0c2150fcf66e1248ef6e'
  name 'Kinsky'
  homepage 'https://oss.linn.co.uk/trac/wiki/DownloadKinsky'

  pkg "Kinsky_#{version}_osx.pkg"

  uninstall pkgutil: 'uk.co.linn.Kinsky'
end
