cask 'menuffy' do
  version '1.0.5'
  sha256 '101df4ba3d5fd7278d617b2007c23ee7eb0f06237c517d8770765524083c55e8'

  url "https://github.com/zaru/menuffy/releases/download/v#{version}/menuffy.dmg"
  appcast 'https://zaru.github.io/menuffy/updates/appcast.xml'
  name 'menuffy'
  homepage 'https://github.com/zaru/menuffy/'

  app 'menuffy.app'
end
