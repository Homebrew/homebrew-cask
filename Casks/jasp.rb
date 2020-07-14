cask 'jasp' do
  version '0.13.0.0'

  if MacOS.version <= :mojave
    sha256 'de390767da9f436beb15b3424bc4de3db43c753b20b9b12bd30b68d63ca44daa'

    url "https://static.jasp-stats.org/JASP-#{version}-preCatalina.dmg"
  else
    sha256 '7e885e7d5d2e33212e3bc1c1b2ee516f71e32315ecf9db64225ab95dfac48ad6'

    url "https://static.jasp-stats.org/JASP-#{version}-Catalina.dmg"
  end
  appcast 'https://jasp-stats.org/download/',
          must_contain: version.sub(%r{(.0)+$}, '')
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :high_sierra'

  app 'JASP.app'
end
