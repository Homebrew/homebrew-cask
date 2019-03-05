cask 'superproductivity' do
  version '2.4.6'
  sha256 '2ff3c43f9d59dfe75410ecf5881c74ba96cde75b4b4c655a174ebed9c0e3c641'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
