cask 'jasp' do
  version '0.10.1'
  sha256 '726df6a6970785c51bc7b8a3b50ad57a083ab2a51541c50bee66df54977e4bf3'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/'
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :sierra'

  app 'JASP.app'
end
