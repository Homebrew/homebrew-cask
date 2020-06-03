cask 'superproductivity' do
  version '5.2.1'
  sha256 '7a4fd859d94fa3ad325dec2920870d79b2cf380c7332878653e34104f6a6485e'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
