cask 'devonthink' do
  version '2.9.16'
  sha256 '85e474a8603f00838a66e0db4989c894a96254a88c7cca8de2723d6bb8c68708'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '5f42b7fff77c3c1113edc0b8575f441416d5e8d293879f594e6cc69244e844f7'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
