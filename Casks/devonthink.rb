cask 'devonthink' do
  version '2.9'
  sha256 '15f0860a347f961d28aa0d7dc77c31ab3eea1a97aab187ffaf5a8bba392bb078'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Personal.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=217255&format=xml',
          checkpoint: 'fcba01ac18aba94a010e360b010d5a1a450f762ce0ec7ef6c809742ac75d94f6'
  name 'DEVONthink Personal'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-personal.html'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'DEVONthink.app'
end
