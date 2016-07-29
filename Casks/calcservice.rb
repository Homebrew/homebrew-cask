cask 'calcservice' do
  version '3.4.1'
  sha256 'e30a576a7a3782d881e171c6f077dbf0933d69bbbe9343bf919fc3d67bac8527'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/calcservice/#{version}/CalcService.zip"
  name 'CalcService'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c1111'
  license :gratis

  app 'CalcService.app'
end
