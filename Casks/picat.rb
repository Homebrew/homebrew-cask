cask 'picat' do
  version '2.1'
  sha256 '4fb2a7546ae5cff956e86d1571856803028cf0afbd4311e9c69b763fb18f8c14'

  url "http://picat-lang.org/download/picat#{version.no_dots}_macx.tar.gz"
  appcast 'http://picat-lang.org/updates.txt',
          checkpoint: 'fb50fc158239ceb070bbd13c06937a2a08f63f93654b456c820072a1a810404f'
  name 'Picat'
  homepage 'http://www.picat-lang.org/'

  binary 'Picat/picat'
end
