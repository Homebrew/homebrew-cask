cask :v1 => 'devonthink-pro' do
  version '2.8'
  sha256 'ac9521a0017643f1305d24f7d1b8cdd19ab6dde78319ae9a862aae1b1fde2521'

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkPro2.xml',
          :sha256 => '038025b21f4e07e0dceb4b3e3b731f6d1482a3a339151cbac446e4cfb970a75e'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :unknown

  container :nested => 'DEVONthink_Pro.dmg'
  app 'DEVONthink Pro.app'
end
