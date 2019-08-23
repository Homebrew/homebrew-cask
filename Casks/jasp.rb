cask 'jasp' do
  version '0.10.2'
  sha256 '9ee2f56208319e3f1a9d525cd3b67b3000ab10a293baf28822b2fc9a82345c1e'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/'
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :sierra'

  app 'JASP.app'
end
