cask 'superproductivity' do
  version '5.4.1'
  sha256 '21ad5dc6f49501b46b009bf26f43feca7ebbd214ab5a5f75d653d324229fafe0'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
