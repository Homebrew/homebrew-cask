class DevonthinkProOffice < Cask
  version '2.7.4'
  sha256 'fab41794b3739d28ac936caef8d2c921105604f959a37c4e19a16b3ac9481e59'
  
  url 'https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/2.7.4/DEVONthink_Pro_Office.dmg.zip'
  appcast 'http://www.devon-technologies.com/Sparkle/DEVONthinkProOffice2.xml'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro-office.html'

  nested_container 'DEVONthink_Pro_Office.dmg'
  link 'DEVONthink Pro.app', :target => 'DEVONthink Pro Office.app'
end
