cask 'reaper' do
  version '5.25'

  if Hardware::CPU.is_32_bit?
    sha256 '010deeaecc2780b113ab518dce270eb3222ca60d99db962204043c04898b6abd'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_i386.dmg"
    app 'REAPER.app'
    app 'ReaMote.app'
  else
    sha256 '2dc452bca5ff728fa1052c07a83fe87f0b7d11b6536164163e811e88f1982a33'
    url "http://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
    app 'REAPER64.app'
    app 'ReaMote64.app'
  end

  appcast 'http://www.reaper.fm/whatsnew.txt',
          checkpoint: '37690b7573881618f2eef64df5e1ff48989f85428db78192c3d9ed70ba292847'
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
