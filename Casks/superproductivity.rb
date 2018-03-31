cask 'superproductivity' do
  version '1.10.4'
  sha256 'a94598ac6cc12966b72531cd9ba922119411cf67a84dac78e60c2cd4d213c471'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom',
          checkpoint: '6faa2f14286438f76e2ecf2f4c45c25f823f9a4ef32d8579791efbaf718106de'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
