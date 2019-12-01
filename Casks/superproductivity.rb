cask 'superproductivity' do
  version '2.13.12'
  sha256 '125d4c528a1186c65d0f03dcfdf310f57f307704f0392d7ed4a06858888db2b1'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
