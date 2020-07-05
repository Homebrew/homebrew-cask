cask 'jasp' do
  version '0.13.0.0'

  if MacOS.version <= :mojave
    sha256 'adb48f890645868140e9252c087d6d16e7e41059f9336fbefe5a7ec7bf011e19'

    url "https://static.jasp-stats.org/JASP-#{version}-preCatalina.dmg"
  else
    sha256 '22a27b1842b34935d753d79cd3bd4398470220c40dd5b09bc8e601d264f8ccc8'

    url "https://static.jasp-stats.org/JASP-#{version}-Catalina.dmg"
  end
  appcast 'https://jasp-stats.org/download/',
          must_contain: version.sub(%r{(.0)+$}, '')
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :high_sierra'

  app 'JASP.app'
end
