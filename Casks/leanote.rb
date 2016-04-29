cask 'leanote' do
  version '1.0.7'
  sha256 :no_check

  url "http://downloads.sourceforge.net/sourceforge/leanote-desktop-app/leanote-desktop-mac-v#{version}.zip"
  name 'Leanote'
  homepage 'http://leanote.org'
  license :gpl

  app 'Leanote.app'
end
