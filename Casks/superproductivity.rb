cask 'superproductivity' do
  version '2.13.9'
  sha256 'f6f45697215f3ca5eef8feba55c0aeec59f3ccd723d676577b2421d00dd962f2'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
