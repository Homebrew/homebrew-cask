cask :v1 => 'biba' do
  version '3.5.3678'
  sha256 'b3b22a156484bccd06978ed806a0865d14559e5cd5fea15453b935aba940a6ed'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://biba.com/osx_downloads/appcast',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
