cask 'devonthink-pro' do
  version '2.9.1'
  sha256 'bfaddb787e2a23023da4bd4630da797510353de3873b3b1494b4236a89bb51fb'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: '967d931617b05483e6381f6220d64234a367f8c64772bfa0dc923df77bdc0743'
  name 'DEVONthink Pro'
  homepage 'http://www.devontechnologies.com/products/devonthink/devonthink-pro.html'
  license :commercial

  app 'DEVONthink Pro.app'
end
