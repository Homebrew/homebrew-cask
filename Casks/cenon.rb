cask 'cenon' do
  version '4.0.6'
  sha256 '90f5b1a09519d656742be290f070471f218f3dbc0f391a5e81d45c3d72179a71'

  # cenon.download was verified as official when first introduced to the cask
  url "http://www.cenon.download/binaries/Apple/Cenon-#{version}.pkg"
  appcast 'http://www.cenon.zone/download/binaries/Apple/'
  name 'Cenon'
  homepage 'https://www.cenon.info/'

  pkg "Cenon-#{version}.pkg"

  uninstall pkgutil: 'com.cenon'
end
