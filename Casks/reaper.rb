class Reaper < Cask
  homepage 'http://www.reaper.fm/'
  version '4.71'

  if Hardware::CPU.is_64_bit?
    url 'http://www.reaper.fm/files/4.x/reaper471_x86_64.dmg'
    sha256 '3045fd59189bd0fe398b50f511d014a5e385c8cfb88f8a188a8437050f783d71'
    link 'REAPER64.app'
    link 'ReaMote64.app'
  else
    url 'http://www.reaper.fm/files/4.x/reaper471_i386.dmg'
    sha256 '1a670d5afb5956e1486c1fdef008ccfb4faa7987cc4d5ea8171a2794ff86ffca'
    link 'REAPER.app'
    link 'ReaMote.app'
  end
end
