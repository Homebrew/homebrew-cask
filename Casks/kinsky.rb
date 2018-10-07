cask 'kinsky' do
  version '4.4.19'
  sha256 '86be0b0c7b50d65a44a1cac24dc47dce55b5a6dceed36e8d66b8842db31574bc'

  url "https://oss.linn.co.uk/Releases/Kinsky/Davaar/Kinsky_#{version}_osx.pkg"
  appcast 'https://oss.linn.co.uk/Releases/Kinsky/Davaar/'
  name 'Kinsky'
  homepage 'https://oss.linn.co.uk/trac/wiki/DownloadKinsky'

  pkg "Kinsky_#{version}_osx.pkg"

  uninstall pkgutil: 'uk.co.linn.Kinsky'
end
