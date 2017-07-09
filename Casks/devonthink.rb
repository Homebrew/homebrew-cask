cask 'devonthink' do
  version '2.9.13'
  sha256 '77f9d48d262d9b96b3406b5ce2b346c7e437e579ad5bd693e21c56a024258c6d'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '86968e1f3082d5c31f153dbbbbcef6986278f2ec63a8fb1168b7e4ef3e8273ef'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
