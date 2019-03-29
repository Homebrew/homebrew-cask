cask 'devonthink-pro' do
  version '2.11.2'
  sha256 '49e171a1efcd4cad47f36a858a6920f332e761eb8fb2b307da8e168975c4e3ae'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300030707'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/apps/devonthink'

  auto_updates true

  app 'DEVONthink Pro.app'
end
