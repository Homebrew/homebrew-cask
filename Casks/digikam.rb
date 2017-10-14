cask 'digikam' do
  version '5.7.0-02'
  sha256 '690ce5e65a4ea9471327936025ec19979dae18605d3b6c1f6afddf77cebc864e'

  # kde.org/stable/digikam was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/digiKam-#{version}-MacOS-x86-64.pkg"
  appcast 'https://download.kde.org/stable/digikam/',
          checkpoint: '4b83a398b5297e2f3eef708075f3f559dcd7a7698b95652bb9bfeb0efc88400e'
  name 'digiKam'
  homepage 'https://www.digikam.org/'

  pkg "digikam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: 'org.freedesktop.digikam'
end
