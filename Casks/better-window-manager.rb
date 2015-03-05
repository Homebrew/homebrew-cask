cask :v1 => 'better-window-manager' do
  version :latest
  sha256 :no_check

  url 'http://www.gngrwzrd.com/BetterWindowManager.zip'
  name 'Better Window Manager'
  homepage 'http://www.gngrwzrd.com/better-window-manager/'
  license :commercial

  app 'Better Window Manager.app'

  depends_on :macos => '>= 10.10'
end
