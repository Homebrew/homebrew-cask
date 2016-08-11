cask 'devonthink' do
  version '2.9.2'
  sha256 '94b9e3110b8dd44a6bfc2a33074c3e05a31ba7b0203511847d27b9de2f1b3e8f'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: '06404a96bcd79f0967a3d6b7f598649fa5ed14a2829658940e22cd0787d89710'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
