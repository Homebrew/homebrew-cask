cask 'stretchly' do
  version '0.12.0'
  sha256 'a73906fd189caa81913907d081cac7425d191639b75c59ec105f39f7c25648a0'

  # github.com/hovancik/stretchly was verified as official when first introduced to the cask
  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}-mac.zip"
  appcast 'https://github.com/hovancik/stretchly/releases.atom',
          checkpoint: 'c7411c3ed3ca7ceb1307611a10171ae4906542cd7ab278f2606aaf37740f7662'
  name 'stretchly'
  homepage 'https://hovancik.net/stretchly/'

  app 'stretchly.app'
end
