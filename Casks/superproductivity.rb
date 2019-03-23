cask 'superproductivity' do
  version '2.5.8'
  sha256 '9ab4b1e94799d6d7dac4ebed4969fb485891559270ff8fa773285ac07e368c63'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
