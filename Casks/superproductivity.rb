cask 'superproductivity' do
  version '2.9.3'
  sha256 '0bb87a6d8e32a0e646e9864864c4083e4072927da73399df6bb9904bd4853ad0'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
