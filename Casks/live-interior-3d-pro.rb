cask 'live-interior-3d-pro' do
  version '2.9.8'
  sha256 'b3cc36335144ce3b6296d18ccb71cc9e433a47368785182488368156185f3bcf'

  # amazonaws.com/belightsoft was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/belightsoft/LiveInterior3DPro.dmg'
  appcast 'https://www.belightsoft.com/download/updates/appcast_li3d_pro_from_2_8_1.xml'
  name 'Live Interior 3D Pro'
  homepage 'https://www.livehome3d.com/mac/live-home-3d-pro'

  app 'Live Interior 3D Pro.app'
end
