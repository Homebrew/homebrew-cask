cask 'plover' do
  version '3.1.0'
  sha256 '6e325d70bab78de5c6846f9ba83e66b3ce3c59d61a267eaeb9183dc26edac9cf'

  # github.com/openstenoproject/plover was verified as official when first introduced to the cask
  url "https://github.com/openstenoproject/plover/releases/download/v#{version}/Plover-#{version}-macOS.dmg"
  appcast 'https://github.com/openstenoproject/plover/releases.atom',
          checkpoint: '00552cb3716e36085af2c8ad44d0774d3e404e9ad86656bee7edb57721cd1d8c'
  name 'Plover'
  homepage 'https://stenoknight.com/wiki/Main_Page'

  accessibility_access true

  app 'plover.app'

  zap delete: '~/Library/Application Support/plover/'
end
