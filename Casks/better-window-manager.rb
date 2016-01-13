cask 'better-window-manager' do
  version '1.13.14'
  sha256 '2d3e802c4317c0d9995cd42378d1a317fb9049086c7aafe9fece66970b81b6b1'

  url "https://gngrwzrd.com/BetterWindowManager-#{version}.zip"
  appcast 'https://www.gngrwzrd.com/betterwindowmanager-appcast.xml',
          :sha256 => '430bc6f3280a462875cd82c6a932f311846ac67198622c578c86abd3450b3c9c'
  name 'Better Window Manager'
  homepage 'https://www.gngrwzrd.com/better-window-manager/'
  license :commercial

  depends_on :macos => '>= 10.10'

  app 'Better Window Manager.app'
end
