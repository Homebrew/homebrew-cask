cask 'blueservice' do
  version '1.4.1'
  sha256 '104712800282df3b727e47fbe1e48f0f9dbdb12b35d81c02d43e52bdede9b369'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/blueservice/#{version}/BlueService.zip"
  name 'BlueService'
  homepage 'https://www.devontechnologies.com/products/freeware.html#c964'

  app 'BlueService.app'
end
