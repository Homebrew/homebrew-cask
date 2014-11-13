cask :v1 => 'httpscoop' do
  version '1.4.3'
  sha256 'cf3d9767a86e996ecbb3c7abe7e1b43eef985d6125bb3c6680f9246e4db9214e'

  url "https://s3.amazonaws.com/Trueridge/HTTPScoop_#{version}.dmg"
  appcast 'http://www.tuffcode.com/releases/httpscoop-appcast.xml',
          :sha256 => 'f3d7449544aa64c7709cdb8c5ccd93f2a056550add5fc7493fc402b2c515c5cb'
  homepage 'http://www.tuffcode.com'
  license :unknown

  app 'HTTPScoop.app'
end
