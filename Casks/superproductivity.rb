cask 'superproductivity' do
  version '1.10.56'
  sha256 '8deec886bf25ebae6fae80551469ea0dbdc5736ef72cbdf26f5c1cd160cb5150'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
