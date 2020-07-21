cask 'jasp' do
  version '0.13.1.0'

  if MacOS.version <= :mojave
    sha256 '512d7b2dca785286e05a38c3d4bf8b81dd0c711d055614d87b1d80e02da03e6a'

    url "https://static.jasp-stats.org/JASP-#{version}-preCatalina.dmg"
  else
    sha256 'eb10321bc009f250ff2ff1126f6008984956025af46657c799aa0f4870296147'

    url "https://static.jasp-stats.org/JASP-#{version}-Catalina.dmg"
  end
  appcast 'https://jasp-stats.org/download/',
          must_contain: version.sub(%r{(.0)+$}, '')
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :high_sierra'

  app 'JASP.app'
end
