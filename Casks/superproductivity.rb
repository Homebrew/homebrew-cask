cask 'superproductivity' do
  version '2.10.8'
  sha256 'e2a11011d7c71646cb5ff212de34b3e68e97387b7852400871c4fa44bbfcd3a4'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
