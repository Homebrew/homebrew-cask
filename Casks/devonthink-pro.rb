cask :v1 => 'devonthink-pro' do
  version '2.8.6'
  sha256 '3b5d369bc641d6c0d8ded140ca6c496474051f93f79f53a97c872631f17530a7'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.dmg.zip"
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkPro2.xml',
          :sha256 => 'ab35058aac9f3010b0a12054fba2e80cb6d03ac65443c6d90e4fb14937f45d20'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  container :nested => 'DEVONthink_Pro.dmg'
  app 'DEVONthink Pro.app'
end
