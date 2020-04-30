cask 'superproductivity' do
  version '5.0.15'
  sha256 '1f6eca53125ecc2a41a77883c77d910c32c3a22a521b9ddba04f5949364fac20'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
