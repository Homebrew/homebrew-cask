cask 'superproductivity' do
  version '3.0.4'
  sha256 '5cd3a39c3be9e9196dbb82ec72bc404df6c94d0bc756847704ab50a69e5619a1'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
