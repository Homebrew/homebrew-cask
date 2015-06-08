cask :v1 => 'devonthink-pro' do
  version '2.8.5'
  sha256 '161632818b26eb6f2ee2e9818e7c3506d1b54d5ceb934d546403bbc6f62674a6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkPro2.xml',
          :sha256 => '038025b21f4e07e0dceb4b3e3b731f6d1482a3a339151cbac446e4cfb970a75e'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => 'DEVONthink_Pro.dmg'
  app 'DEVONthink Pro.app'
end
