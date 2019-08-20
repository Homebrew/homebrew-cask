cask 'superproductivity' do
  version '2.10.9'
  sha256 '1cb58c2a0069d152c145b5ea63189aaa28245c0a2f371c3cccb49d13a8dd1e9d'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
