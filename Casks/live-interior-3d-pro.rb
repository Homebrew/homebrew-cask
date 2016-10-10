cask 'live-interior-3d-pro' do
  version :latest
  sha256 :no_check

  # amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/LiveInterior3DPro.dmg'
  name 'Live Interior 3D Pro'
  homepage 'https://www.belightsoft.com/products/liveinterior/proversion.php'

  app 'Live Interior 3D Pro.app'
end
