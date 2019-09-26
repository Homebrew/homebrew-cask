cask 'superproductivity' do
  version '2.12.3'
  sha256 '059b2da3481388468281e1fa8286e9efe6779a7182c6cf3fd87c7eca417725dc'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
