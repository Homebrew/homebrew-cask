cask 'superproductivity' do
  version '2.13.14'
  sha256 '9a0560fe8fa775049e820e823274bf68e97dba1dee1a3a080e0a5fec9a6dee40'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
