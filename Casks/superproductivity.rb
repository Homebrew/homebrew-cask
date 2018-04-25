cask 'superproductivity' do
  version '1.10.14'
  sha256 'fa0631f72bd1e3d8884661b5c824298315270609368bb9341ed146be8f61a6e1'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom',
          checkpoint: 'a12a674e331deed8e2cd3b271a282b89b645be0e2e9da66069a479ef4c3fe99c'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
