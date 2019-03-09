cask 'superproductivity' do
  version '2.5.0'
  sha256 'a99cfa9d67ed5a4d0630f30e240f1dd08154c6590f25881421a7b073ce7885c0'

  # github.com/johannesjo/super-productivity was verified as official when first introduced to the cask
  url "https://github.com/johannesjo/super-productivity/releases/download/v#{version}/superProductivity-#{version}-mac.zip"
  appcast 'https://github.com/johannesjo/super-productivity/releases.atom'
  name 'Super Productivity'
  homepage 'https://super-productivity.com/'

  app 'superProductivity.app'
end
