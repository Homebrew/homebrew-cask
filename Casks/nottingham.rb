cask 'nottingham' do
  version '3.0'
  sha256 '4505a28e3f825a6ae229f4e5adad2caa98642b99462e194bfaffc9e6728c8253'

  url "http://dl.clickontyler.com/nottingham/nottingham20_#{version}.zip"
  appcast 'https://shine.clickontyler.com/appcast.php?id=11',
          checkpoint: 'afe7c888fcd77d2fc798ca002feaabd1fe10ebb2419b163e34ba6e2f5b324fc9'
  name 'Nottingham'
  homepage 'https://clickontyler.com/nottingham/'

  app 'Nottingham.app'
end
