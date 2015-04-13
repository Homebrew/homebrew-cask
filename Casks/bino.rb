cask :v1 => 'bino' do
  version '1.4.4'
  sha256 '924aaef6e95d969bded524647b7a6a35e1c9a8478a7bb855972cfefe25165743'

  # free.fr is the official download host per the vendor homepage
  url "http://devernay.free.fr/hacks/bino/Bino-#{version}-OSX-SnowLeopard-GPL.zip"
  name 'Bino'
  homepage 'http://bino3d.org'
  license :gpl

  app 'Bino.app'
end
