cask 'devonthink' do
  version '2.9.17'
  sha256 '063af95345f2aae7cdeb066de7e544e5d65f4ce73c3d6f5696c8600f51008596'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'c531e5e74b1aaa4c483dd260b7f12ea83e1a782b072023dc2aa9d2df36b08b6f'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink.app'
end
