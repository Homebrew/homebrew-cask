cask 'superproductivity' do
  version '5.3.4'
  sha256 'b9a33edcb1def8f8d6c07c93fd2db25ca80025b9acee8e0cddeee8a2abdafe4d'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
