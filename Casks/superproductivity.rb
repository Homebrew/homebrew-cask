cask 'superproductivity' do
  version '2.5.1'
  sha256 '4a26a83ce61c3db2c687a3961eeacbe6a79b790970a17cdbad1c0a0f15b64cf8'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
