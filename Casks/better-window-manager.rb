cask :v1 => 'better-window-manager' do
  version :latest
  sha256 :no_check

  url 'https://www.gngrwzrd.com/BetterWindowManager.zip'
  name 'Better Window Manager'
  appcast 'https://www.gngrwzrd.com/betterwindowmanager-appcast.xml',
          :sha256 => '321b6bbe7df6f95f49b0c855748d4da1cee655e0ce252988686825068b02f6d9'
  homepage 'https://www.gngrwzrd.com/better-window-manager/'
  license :commercial

  app 'Better Window Manager.app'

  depends_on :macos => '>= 10.10'
end
