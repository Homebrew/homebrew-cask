cask 'devonthink' do
  version '3.0'
  sha256 'b525e33a3352dae6e9a4e8b1b32588752906c6a915fe528f240cb0b1d1e2d3fa'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_3.dmg.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=217255'
  name 'DEVONthink 3'
  homepage 'https://www.devontechnologies.com/apps/devonthink/'

  auto_updates true

  app 'DEVONthink 3.app'
end
