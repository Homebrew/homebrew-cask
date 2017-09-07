cask 'devonthink-pro' do
  version '2.9.15'
  sha256 '599e5e256684c52bb3812e2e978f6c0e961701460470e4dfe2e05bad73d13e1c'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml',
          checkpoint: 'e5bbfe68292e234acdf6a14e8c95d8fc007d25da23edb641abb6cafcb79f34cc'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  app 'DEVONthink Pro.app'
end
