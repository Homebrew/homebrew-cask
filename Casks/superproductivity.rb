cask 'superproductivity' do
  version '2.0.7'
  sha256 'eec60b1223d14b7f491c465f58493a5164f437c2dbce50f2b27594dc8c2f3c6b'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
