cask 'better-window-manager' do
  version '1.14.15'
  sha256 'e6d0745aa969b793d78dd157f4447401ea79f56b03686735a2eb4e39b6321335'

  url "https://gngrwzrd.com/BetterWindowManager-#{version}.zip"
  appcast 'https://www.gngrwzrd.com/betterwindowmanager-appcast.xml',
          checkpoint: 'dd3c8f4360d0a88053314d874709576b8b17552db0c3bca06b5f2a31c8ee7b10'
  name 'Better Window Manager'
  homepage 'https://www.gngrwzrd.com/better-window-manager/'

  depends_on macos: '>= :yosemite'

  app 'Better Window Manager.app'
end
