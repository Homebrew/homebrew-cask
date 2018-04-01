cask 'picat' do
  version '2.2'
  sha256 'fa8336776da18d7669ce59e5a4836c7c3bfeed9d509d4a7a50f0e72862e8ed62'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: '83b1ef8773629f7608539b747f3dfc6317278e83d69988e83d06d258883c5009'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
