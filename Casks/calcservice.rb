class Calcservice < Cask
  url 'https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/calcservice/3.4/CalcService.zip'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c1111'
  version '3.4'
  sha256 '4406f34eb65a72be04548e4cbd4a10b7e1d1518f2acb8df6d20ae40b8620c4b6'
  service 'CalcService/CalcService.service'
end
