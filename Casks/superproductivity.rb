cask 'superproductivity' do
  version '2.8.4'
  sha256 '9da2191a625945709f4765a3bb1ef6780c0c807bbd131fea5b6f7ec3118bb344'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
