cask 'jasp' do
  version '0.10.2'
  sha256 'c29fc742a3d2465488d8e2d49ebe79c46b437a2f55e5ddf20d7781711b8a1f9e'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/'
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :sierra'

  app 'JASP.app'
end
