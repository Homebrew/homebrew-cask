cask :v1 => 'biba' do
  version '3.4.3583'
  sha256 'e0d7ff6607abb2f973cf2ba7e93689b1ce9bcc1a4b1d66cb9a2f3fd0f942438f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://biba.com/osx_downloads/appcast',
          :sha256 => 'a906a7d84c8b94903172aa5fdbf62b65ac2fb642fcc4632d297d3758dd2dbb18'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
