cask 'superproductivity' do
  version '2.13.0'
  sha256 '9146d17a78fadd2feec12cd5b2ada955eb8f021a1c718ea9659ff7b9b858b07e'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
