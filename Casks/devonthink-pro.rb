class DevonthinkPro < Cask
  version '2.7.3'
  sha256 '314b3dacbe567e8fb7314c3a62c1df7fd60bad7c66c8b63c7ea03de09ae8a0c4'

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkPro2.xml',
          :sha256 => '038025b21f4e07e0dceb4b3e3b731f6d1482a3a339151cbac446e4cfb970a75e'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :unknown

  container :nested => 'DEVONthink_Pro.dmg'
  app 'DEVONthink Pro.app'
end
