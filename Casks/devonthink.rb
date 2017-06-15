cask 'devonthink' do
  version '2.9.12'
  sha256 '3aa6866089f91b1d9d14598954443218d731f443627a2ac102649b51acbdf168'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '3f5321f92ad6779d131217fde8396e1a7816c16abe15447ec4e58eecad9c0693'
  name 'DEVONthink Personal'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-personal.html'

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
