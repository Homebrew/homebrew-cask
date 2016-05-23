cask 'leanote' do
  version '2.0'
  sha256 '61894f7a905b59aa04c92f1a6767fcb8e3313614e7bc59cfa4ff9ad816b2a2a0'

  # download.sourceforge.net/sourceforge/leanote-desktop-app was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/leanote-desktop-app/leanote-desktop-mac-v#{version}.zip"
  appcast 'https://github.com/leanote/desktop-app/releases.atom',
          checkpoint: '845826b5a9b926a23e193e62560a980485d02ad0a527b23cf24d42d562048598'
  name 'Leanote'
  homepage 'http://leanote.org'
  license :gpl

  app 'Leanote.app'
end
