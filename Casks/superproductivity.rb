cask 'superproductivity' do
  version '2.7.7'
  sha256 'fb16e40859cff975474063aa8f99afb0e5db7a616198fdfb953c5c0b7d92fe18'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
