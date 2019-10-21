cask 'devonagent' do
  version '3.11.2'
  sha256 'cb9817ec4b0f8f79da18f8e14e6a1c2ea9f3158e95875e3fcd4d82dcbefebd0a'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/devonagent/#{version}/DEVONagent_Pro.app.zip"
  appcast 'https://api.devontechnologies.com/1/apps/sparkle/sparkle.php?id=300005193'
  name 'DEVONagent Pro'
  homepage 'https://www.devontechnologies.com/apps/devonagent'

  auto_updates true

  app 'DEVONagent.app'
end
