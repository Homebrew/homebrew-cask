cask 'devonthink-pro' do
  version '2.9.17'
  sha256 '3a01a261a8e5d9b452fbae7d2b22a1c1fd7b95fc0b81e28e5b00aeab79d77c14'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '34e525574a0e9dd88366dd3096ea60e07342a90aa0ba94d510d92536e429ba16'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
