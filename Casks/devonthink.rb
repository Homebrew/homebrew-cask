cask 'devonthink' do
  version '2.9.17'
  sha256 '063af95345f2aae7cdeb066de7e544e5d65f4ce73c3d6f5696c8600f51008596'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'c8b75950113671031dc06d8e5abb567f9b7cc775281419cbfdc0104b5d385de9'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
