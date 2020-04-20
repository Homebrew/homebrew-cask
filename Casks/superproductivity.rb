cask 'superproductivity' do
  version '5.0.10'
  sha256 '06cc23fbff5d35cfe6a3e007127e069455d0e6721ea4d8b46a5c83e390cdc53e'

  # github.com/johannesjo/super-productivity/ was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
