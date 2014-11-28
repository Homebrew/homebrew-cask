cask :v1 => 'nethackcocoa' do
  version '0.3.4'
  sha256 '83a9db8f633996a563fbe939141404625f9cf66180612215484f391df0475e94'

  url "https://nethack-cocoa.googlecode.com/files/NetHackCocoa-#{version}.dmg"
  homepage 'https://code.google.com/p/nethack-cocoa/'
  license :oss

  app 'NetHackCocoa.app'
end
