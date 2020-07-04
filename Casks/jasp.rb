cask 'jasp' do
  version '0.13.0.0'
  sha256 '22a27b1842b34935d753d79cd3bd4398470220c40dd5b09bc8e601d264f8ccc8'

  url "https://static.jasp-stats.org/JASP-#{version}-Catalina.dmg"
  appcast 'https://jasp-stats.org/download/',
          must_contain: version.sub(%r{(.0)+$}, '')
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :catalina'

  app 'JASP.app'
end
