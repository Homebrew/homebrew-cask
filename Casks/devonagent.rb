cask 'devonagent' do
  version '3.10'
  sha256 '950aa227f93b14cebd7856b0fd11926f29202086ea25422382109d0e7bfd47a3'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  appcast 'https://www.devontechnologies.com/fileadmin/templates/filemaker/sparkle.php?product=300005193&format=xml'
  name 'DEVONagent Pro'
  homepage 'https://www.devontechnologies.com/products/devonagent/devonagent-pro.html'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'DEVONagent.app'
end
