cask 'cemu' do
  version '1.2'
  sha256 'c1c5cbf0e5099287a312d8a4a4f3005ff4a5caadce15ad4e28252f873d61c2ff'

  # github.com/CE-Programming/CEmu was verified as official when first introduced to the cask
  url "https://github.com/CE-Programming/CEmu/releases/download/v#{version}/macOS_CEmu.dmg"
  appcast 'https://github.com/CE-Programming/CEmu/releases.atom'
  name 'CEmu'
  homepage 'https://ce-programming.github.io/CEmu/'

  app 'CEmu.app'
end
