cask 'eiskaltdcpp' do
  version '2.2.10-531-macOS10.12'
  sha256 'a9db587335a00afe54fee454538d457b283bb2699c52f97b8d8c45d1ae168143'

  url "https://downloads.sourceforge.net/eiskaltdcpp/EiskaltDC++-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/eiskaltdcpp/rss'
  name 'EiskaltDC++'
  homepage 'https://sourceforge.net/projects/eiskaltdcpp/'

  app 'EiskaltDC++.app'
end
