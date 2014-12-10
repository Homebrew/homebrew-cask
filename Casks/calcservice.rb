cask :v1 => 'calcservice' do
  version '3.4'
  sha256 '4406f34eb65a72be04548e4cbd4a10b7e1d1518f2acb8df6d20ae40b8620c4b6'

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/calcservice/#{version}/CalcService.zip"
  homepage 'http://www.devontechnologies.com/products/freeware.html#c1111'
  license :unknown    # todo: improve this machine-generated value

  service 'CalcService/CalcService.service'
end
