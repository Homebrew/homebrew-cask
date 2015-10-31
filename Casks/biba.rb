cask :v1 => 'biba' do
  version '3.5.3648'
  sha256 'b668b403718408f36f5413805c5eebf3ed0f7bbbdd764fee0dae42034972e026'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://biba.com/osx_downloads/appcast',
          :sha256 => 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'Biba'
  homepage 'https://www.biba.com'
  license :closed

  app 'Biba.app'
end
