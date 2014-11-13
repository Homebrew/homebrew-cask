cask :v1 => 'easysimbl' do
  version '1.6'
  sha256 '42139885e35946f1b2decb9cdfa755b8df8c050134463d76b2e3e0f68e783e26'

  url "https://github.com/norio-nomura/EasySIMBL/releases/download/EasySIMBL-#{version}/EasySIMBL-#{version}.zip"
  homepage 'https://github.com/norio-nomura/EasySIMBL/'
  license :oss

  app 'EasySIMBL.app'
end
