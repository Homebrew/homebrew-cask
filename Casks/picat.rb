cask 'picat' do
  version '2.1'
  sha256 '683d869c45eae37ef9d2827744b413700ad5b2a423d1bb089d8b80845855c339'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: 'a07a65a27557fe066abfe5a989415401600630d3dca16914aa0e9c49f9beec2a'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
