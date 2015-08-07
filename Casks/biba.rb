cask :v1 => 'biba' do
  version '3.3.3481'
  sha256 'd921c32bab3c1383b9680fe0dcb018f06c553b351cfd460fe6ea77edcabb6e3a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://biba.com/osx_downloads/appcast',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
