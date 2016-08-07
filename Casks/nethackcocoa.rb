cask 'nethackcocoa' do
  version '0.3.4'
  sha256 '83a9db8f633996a563fbe939141404625f9cf66180612215484f391df0475e94'

  url "https://github.com/dirkz/NetHack-Cocoa/releases/download/v#{version}/NetHackCocoa-#{version}.dmg"
  appcast 'https://github.com/dirkz/NetHack-Cocoa/releases.atom',
          checkpoint: '9cb9628fcc0e9c79576374ab095dc94661ae6309346a8fac7628a88a2f97ed6f'
  name 'NetHackCocoa'
  homepage 'https://github.com/dirkz/NetHack-Cocoa'
  license :oss

  app 'NetHackCocoa.app'
end
