cask :v1 => 'biba' do
  version '3.4.3583'
  sha256 'e0d7ff6607abb2f973cf2ba7e93689b1ce9bcc1a4b1d66cb9a2f3fd0f942438f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://biba.com/osx_downloads/appcast',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
