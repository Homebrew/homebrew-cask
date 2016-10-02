cask 'devonagent-pro' do
  version '3.9.4'
  sha256 '1d3ca53676c55a228e3a0d87a9abd05d692b123bc65a1e9820f4186a2b065925'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  appcast 'http://www.devon-technologies.com/fileadmin/templates/filemaker/sparkle.php?product=300005193&format=xml',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
  name 'DEVONagent Pro'
  homepage 'http://www.devontechnologies.com/products/devonagent/overview.html'
  license :commercial

  app 'DEVONagent Pro.app'
end
