cask 'superproductivity' do
  version '2.4.2'
  sha256 'eef831ada0c56a8bcee82af1968a58697a1e5be6ce010867e7edb0714d714e87'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
