cask 'devonthink-pro' do
  version '2.9.6'
  sha256 'a215315424d22181f428972fab84bebad72abb655e3cf199721fbae6cefefeb9'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '819e9dfdbe27ef93990534e50432ebb601a396af495afa10c188a5f14962f7c3'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
