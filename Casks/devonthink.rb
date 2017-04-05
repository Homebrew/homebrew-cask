cask 'devonthink' do
  version '2.9.11'
  sha256 '041824169a78b9f8b53b533456f40bd9dacc5845822d9e32ed9f6a1b756b6575'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '34224d20f95432db50fa2c7e74d045285b426b47ff33b52efa6e921a01a97244'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
