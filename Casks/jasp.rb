cask 'jasp' do
  version '0.8.3.1'
  sha256 '335080a8170d8118e3e5898634dad14e737253e0ff02bd103bbff2102060d594'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end
