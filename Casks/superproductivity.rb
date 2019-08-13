cask 'superproductivity' do
  version '2.10.7'
  sha256 'a5441121e3b9cd05b211ae3231c2dda12e4df462f7726dd6fa6370f5bacb7bb7'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
