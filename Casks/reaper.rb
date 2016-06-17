cask 'reaper' do
  version '5.21'

  if Hardware::CPU.is_32_bit?
    sha256 'b34acabd94ac601be4e3a2c70b0789258194b6182ca329fa503a41f79ce76c0a'
    url "http://www.reaper.fm/files/#{version.to_i}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '88c66e30ca7db24dee8b7240be4ffdc23d095ddc869b3e90032b45514399dd14'
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
