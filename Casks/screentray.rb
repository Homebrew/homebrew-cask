cask 'screentray' do
  version '1.7.0'
  sha256 '60b39581c9b240ff9f7ca7d5bc20cf6a1310fd05186a9e96d6ba44d68b723fe6'

  # github.com/DSnopov/screentray-distribution was verified as official when first introduced to the cask
  url "https://github.com/DSnopov/screentray-distribution/releases/download/v#{version}/ScreenTray-#{version}.dmg"
  appcast 'https://github.com/DSnopov/screentray-distribution/releases.atom'
  name 'ScreenTray'
  homepage 'https://screentray.com/'

  depends_on macos: '>= :high_sierra'

  app 'ScreenTray.app'
end
