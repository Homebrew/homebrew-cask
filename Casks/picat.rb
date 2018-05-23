cask 'picat' do
  version '2.4'
  sha256 '6b5da2bcf5a7d62576018c0968e406677cf4c8f207c4db2ed6939701a5f13e06'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: 'ca2fcc9224520e6222e1e3b50bcf1eb7a80f5bca3a2900486fcb86fd2e7eb9ed'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
