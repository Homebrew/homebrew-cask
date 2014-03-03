class DevonthinkPro < Cask
  url 'https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/2.7.3/DEVONthink_Pro.dmg.zip'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  version '2.7.3'
  sha256 '314b3dacbe567e8fb7314c3a62c1df7fd60bad7c66c8b63c7ea03de09ae8a0c4'
  nested_container 'DEVONthink_Pro.dmg'
  link 'DEVONthink Pro.app'
end
