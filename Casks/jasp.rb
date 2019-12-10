cask 'jasp' do
  version '0.11.1.0'
  sha256 '1e7b215daaf195d101fda0be37b9627940f9dbdcbba376b1841da7261947fc68'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/'
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :sierra'

  app 'JASP.app'
end
