cask 'devonthink-pro' do
  version '2.10.2'
  sha256 '0f0c3891a9358d8d1dd3868e89a49751a12ae39f56bb351be5a5e5cab104dab9'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonthink/#{version}/DEVONthink_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300030707&format=xml'
  name 'DEVONthink Pro'
  homepage 'https://www.devontechnologies.com/products/devonthink/devonthink-pro.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONthink Pro.app'
end
