cask 'devonthink' do
  version '2.10.1'
  sha256 'e08348ad43b26bb0faab682c1546e8a3d0a1e40fa5f785b3daa456f48e4ae2cf'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink.app'
end
