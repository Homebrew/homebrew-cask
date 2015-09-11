cask :v1 => 'blueservice' do
  version '1.4.1'
  sha256 '104712800282df3b727e47fbe1e48f0f9dbdb12b35d81c02d43e52bdede9b369'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/blueservice/#{version}/BlueService.zip"
  name 'BlueService'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c964'
  license :gratis

  app 'BlueService.app'
end
