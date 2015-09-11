cask :v1 => 'devonthink-pro' do
  version '2.8.5'
  sha256 '161632818b26eb6f2ee2e9818e7c3506d1b54d5ceb934d546403bbc6f62674a6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkPro2.xml',
          :sha256 => '5a6d91414dcd0c755c3db5b757363177630005215a3c1c6fedcfdd2e2b2dc0c6'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  container :nested => 'DEVONthink_Pro.dmg'
  app 'DEVONthink Pro.app'
end
