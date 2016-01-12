cask 'httpscoop' do
  version '1.4.3'
  sha256 'cf3d9767a86e996ecbb3c7abe7e1b43eef985d6125bb3c6680f9246e4db9214e'

  url "https://www.tuffcode.com/releases/HTTPScoop_#{version}.dmg"
  appcast 'https://www.tuffcode.com/releases/httpscoop-appcast.xml',
          :sha256 => 'd7f3ff6fbb1aaa2e767e3dee153fc59421f31a011d32198f39a79ace3064fba2'
  name 'HTTP Scoop'
  homepage 'https://www.tuffcode.com'
  license :commercial

  app 'HTTPScoop.app'
end
