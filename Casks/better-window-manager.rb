cask 'better-window-manager' do
  version '1.13.14'
  sha256 '2d3e802c4317c0d9995cd42378d1a317fb9049086c7aafe9fece66970b81b6b1'

  url "https://gngrwzrd.com/BetterWindowManager-#{version}.zip"
  appcast 'https://www.gngrwzrd.com/betterwindowmanager-appcast.xml',
          :sha256 => 'db3d611bb08871b390bd7d609db9e2d62ef23c22fd9906dfa1368138196aceec'
  name 'Better Window Manager'
  homepage 'https://www.gngrwzrd.com/better-window-manager/'
  license :commercial

  depends_on :macos => '>= 10.10'

  app 'Better Window Manager.app'
end
