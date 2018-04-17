cask 'kinsky' do
  version '4.4.19'
  sha256 '86be0b0c7b50d65a44a1cac24dc47dce55b5a6dceed36e8d66b8842db31574bc'

  url "https://oss.linn.co.uk/Releases/Kinsky/Davaar/Kinsky_#{version}_osx.pkg"
  appcast 'http://oss.linn.co.uk/Releases/Kinsky/Davaar/',
          checkpoint: 'e409c1d3589a72c61c03e3a2960e80b905d79b67a77b80b6da64abbc4ba69b2b'
  name 'Kinsky'
  homepage 'https://oss.linn.co.uk/trac/wiki/DownloadKinsky'

  pkg "Kinsky_#{version}_osx.pkg"

  uninstall pkgutil: 'uk.co.linn.Kinsky'
end
