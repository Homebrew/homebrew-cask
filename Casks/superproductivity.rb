cask 'superproductivity' do
  version '1.10.52'
  sha256 '05b92b0c369b192d745a50c1c2cf795a02748f65713f04de1b971ea8579571bc'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'mac/superProductivity.app'
end
