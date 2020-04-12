cask 'jasp' do
  version '0.12.0.0'
  sha256 '287ba794734f602a5b9e564356f9d92b09ba0ec1d7f180b71cae2e60d369190a'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/',
          configuration: version.sub(%r{(.0)+$}, '')
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :sierra'

  app 'JASP.app'
end
