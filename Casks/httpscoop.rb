class Httpscoop < Cask
  version '1.4.3'
  sha256 'cf3d9767a86e996ecbb3c7abe7e1b43eef985d6125bb3c6680f9246e4db9214e'

  url 'https://s3.amazonaws.com/Trueridge/HTTPScoop_1.4.3.dmg'
  appcast 'http://www.tuffcode.com/releases/httpscoop-appcast.xml'
  homepage 'http://www.tuffcode.com'

  link 'HTTPScoop.app'
end
