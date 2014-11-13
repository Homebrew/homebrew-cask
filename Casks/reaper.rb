cask :v1 => 'reaper' do
  version '4.71'

  if Hardware::CPU.is_32_bit?
    sha256 '1a670d5afb5956e1486c1fdef008ccfb4faa7987cc4d5ea8171a2794ff86ffca'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.gsub('.','')}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '3045fd59189bd0fe398b50f511d014a5e385c8cfb88f8a188a8437050f783d71'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.gsub('.','')}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

  homepage 'http://www.reaper.fm/'
  license :unknown
end
