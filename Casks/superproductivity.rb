cask 'superproductivity' do
  version '2.10.12'
  sha256 '00c2f7a6bf7e6424e469c015ff60adaae03b82816fb9caca48a427e978e45a89'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
