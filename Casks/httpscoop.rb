cask 'httpscoop' do
  version '1.4.3'
  sha256 'cf3d9767a86e996ecbb3c7abe7e1b43eef985d6125bb3c6680f9246e4db9214e'

  url "https://www.tuffcode.com/releases/HTTPScoop_#{version}.dmg"
  appcast 'https://www.tuffcode.com/releases/httpscoop-appcast.xml',
          checkpoint: 'a89471dee5778a059186b4a3035520d2bbfb5581d90f95b84ebc94408b21c2c1'
  name 'HTTP Scoop'
  homepage 'https://www.tuffcode.com'

  app 'HTTPScoop.app'
end
