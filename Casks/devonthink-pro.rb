cask 'devonthink-pro' do
  version '2.9.13'
  sha256 '1705c28fef0ef199e7b4a81b28feb35df79e3f2cd34096db435c8375ec998235'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '2425fd0aa471911fff4b6ff4622078031abe1bf647f72197fc9779ed43b489e4'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
