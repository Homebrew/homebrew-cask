cask 'devonthink-pro' do
  version '2.9.7'
  sha256 '56705084f72c242a1277fc4fba01d995ff6aefe716d2280ee49f32a1d0b8cb0d'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '90003251a95afcd0f47fd1fa9c54b398e5b193ed2a1bee4816754f02644fd916'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
