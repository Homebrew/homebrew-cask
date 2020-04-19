cask 'jasp' do
  version '0.12.1.0'
  sha256 '3a249eb1aef8c0d5f13e6dfffad2b6e5190ac3d203e04f74ed75b59e20e95504'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/',
          configuration: version.sub(%r{(.0)+$}, '')
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :high_sierra'

  app 'JASP.app'
end
