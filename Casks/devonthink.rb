cask 'devonthink' do
  version '2.9.12'
  sha256 '3aa6866089f91b1d9d14598954443218d731f443627a2ac102649b51acbdf168'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '17e7dd27abdb4be17e08dced0087fe90161d48fd64edba69e618f611cb6555eb'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
