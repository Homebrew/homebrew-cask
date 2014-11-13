cask :v1 => 'kinsky' do
  version '4.3.17'
  sha256 '624d2ee1c2ab62e347b7effe0ec8b1bd32d6e70d9cae6fb62d8fb8e2995c7173'

  url "http://oss.linn.co.uk/Releases/Kinsky/Davaar/Kinsky_#{version}_osx.pkg"
  homepage 'http://oss.linn.co.uk/trac/wiki/DownloadKinsky'
  license :bsd

  pkg "Kinsky_#{version}_osx.pkg"
  uninstall :pkgutil => 'uk.co.linn.Kinsky'
end
