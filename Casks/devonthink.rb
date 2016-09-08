cask 'devonthink' do
  version '2.9.4'
  sha256 '6600edb460099c338292bc160119bf1c08d6aaf6c95a4b889f1832fc9d642bc9'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'ea7be7476b53e4946cd02a6bdf344d1d78b2736bd5a779f3f39b556b0bf8aa91'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
