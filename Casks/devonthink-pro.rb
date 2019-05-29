cask 'devonthink-pro' do
  version '2.11.3'
  sha256 '5e754263357b50d0148674b5ad13b66522f86424f90c9cd9c8af9d3f7f1ffcca'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300030707'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/apps/devonthink'

  auto_updates true

  app 'DEVONthink Pro.app'
end
