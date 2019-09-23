cask 'superproductivity' do
  version '2.12.1'
  sha256 '82d98fcda4749fb3cbe0e7120705c7830b93b1d73fe3462d6ef97497432f4818'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
