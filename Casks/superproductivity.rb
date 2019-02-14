cask 'superproductivity' do
  version '2.2.2'
  sha256 '798ce9d3eae3437e073c2b101964b1fd0ec5c40d26caeceab8fc1afc12c4574f'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
