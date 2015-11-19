cask :v1 => 'devonthink-pro' do
  version '2.8.7'
  sha256 '49f5ebd10dfb79c4610f3042d04ce49801160e69d37c9efd6da651c9e375be35'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkPro2.xml',
          :sha256 => 'd1c3526d9d9d9f0c81fa3348ef39c26118be13e3b8bad33724897ea49058470f'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  container :nested => 'DEVONthink_Pro.dmg'
  app 'DEVONthink Pro.app'
end
