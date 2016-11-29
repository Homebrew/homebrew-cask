cask 'devonthink' do
  version '2.9.7'
  sha256 '7ef599163bda487d9366f0ac33cec44851969ca921b9f3dd57f5f6570990ebda'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'b52cda71b26980a2021257d56d2e3be80a3093dc190be42153ee48e8eb7fe1f7'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
