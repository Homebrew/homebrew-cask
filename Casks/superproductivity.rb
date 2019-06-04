cask 'superproductivity' do
  version '2.7.6'
  sha256 '763c3f889729f8aabf1c2b6a36b4eb2b4f74cdb9c1f7b93dc4b9f27562dfc963'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
