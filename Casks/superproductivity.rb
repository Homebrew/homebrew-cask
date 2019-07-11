cask 'superproductivity' do
  version '2.8.5'
  sha256 '7e1e0ba180c7a3383fb5a12535d15a02763a2465bc367a36cd987fcf61ae1f08'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
