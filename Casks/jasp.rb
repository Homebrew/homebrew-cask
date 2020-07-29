cask 'jasp' do
  version '0.12.2.0'
  sha256 '90fad0e14152066b9d93c67abb2894af3b6e89b3917294db4224747138eb0c8f'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/',
          must_contain: version.sub(%r{(.0)+$}, '')
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :high_sierra'

  app 'JASP.app'
end
