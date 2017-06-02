cask 'picat' do
  version '2.1'
  sha256 '2a51c892388ffc48a7a55b336dfcf7c7dbb0c347bbcaf4038d2f1ea10f9b0097'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: 'c2e35787d2c61d8e73ef38369fa0c139e153a24169d43bb8f43a33ba58ae0a39'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
