cask 'devonthink' do
  version '2.11.3'
  sha256 '88c0cf9394ce6e80ef1bc719070b391739779b303c6a624ac4646dedd25740f6'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=217255'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/apps/devonthink/'

  auto_updates true

  app 'DEVONthink.app'
end
