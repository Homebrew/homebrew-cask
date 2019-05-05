cask 'superproductivity' do
  version '2.6.1'
  sha256 '087e07b9a4ad0b91f183b67aa892aa75abd564583b90392bfb19ac5eb8247cab'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
