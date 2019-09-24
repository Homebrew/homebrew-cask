cask 'jasp' do
  version '0.11.0.3'
  sha256 '26b6f697be0f1061a2f0dc53a05e21edc248dc28ccfb1c6873081758ba45c3da'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  appcast 'https://jasp-stats.org/download/'
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  depends_on macos: '>= :sierra'

  app 'JASP.app'
end
