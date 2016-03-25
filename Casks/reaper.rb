cask 'reaper' do
  version '5.17'

  if Hardware::CPU.is_32_bit?
    sha256 '83994645ba873598986df0bbc093c126d87140b528ca425ad831cadac46da90a'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 'c48551a22096ac602f26812cc088d6413fcd2793546fe2f57c3641835d6fe139'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.no_dots}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

  name 'REAPER'
  homepage 'http://www.reaper.fm/'
  license :commercial

  zap delete: [
                '~/Library/Application Support/REAPER',
                '~/Library/Saved Application State/com.cockos.reaper.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
              ]
end
