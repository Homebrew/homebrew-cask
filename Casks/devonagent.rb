cask 'devonagent' do
  version '3.11.1'
  sha256 '2b17fae352ca6271d0f0eb0d5ab643d0b9312d757112efd77c39f9e9e05151e6'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=300005193&format=xml'
  name 'DEVONagent Pro'
  homepage 'https://www.devontechnologies.com/products/devonagent/devonagent-pro.html'

  auto_updates true

  app 'DEVONagent.app'
end
