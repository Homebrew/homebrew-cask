cask 'superproductivity' do
  version '1.10.45'
  sha256 '2f36d2acf2b0795b54a8e433a3aa5b1900f6eaec4c3cac06114707b352408e43'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
