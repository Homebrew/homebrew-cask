cask 'devonthink' do
  version '2.10.2'
  sha256 '470ee96b654d4ff7d0ce71b755297294f7c6f355de03234ab2f61a1ad83faa1b'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink.app'
end
