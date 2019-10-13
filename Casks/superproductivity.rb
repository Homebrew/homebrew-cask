cask 'superproductivity' do
  version '2.13.2'
  sha256 '8405eefd49f3a703770db61f7846b555389a7accfcef72ee1e6a01c8b1510f3d'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
