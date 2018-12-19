cask 'devonthink' do
  version '2.11.1'
  sha256 'a4be32d6fc21b19806cd3f89e736f36c0f160d122d87f9261cf7e2b13b6c3436'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink.app'
end
