class Slingshot < Cask
  url 'http://download.airsquirrels.com/Slingshot/Mac/Slingshot.dmg'
  appcast 'https://updates.airsquirrels.com/Slingshot/Mac/Slingshot.xml'
  homepage 'http://www.airsquirrels.com/slingshot/'
  version 'latest'
  sha256 :no_check
  link 'Slingshot.app'
end
