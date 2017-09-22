cask 'reaper' do
  version '5.50c'
  sha256 '20e0111817520634eebf85990dd3f15e112ade5a87b84487eb60dea6baa88938'

  url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  appcast 'https://www.reaper.fm/download.php',
          checkpoint: '788eb6237892ad58506adf14d795b0474f7148d1e8ace4bbfb4fb9b2d073fb63'
  name 'REAPER'
  homepage 'https://www.reaper.fm/'

  app 'REAPER64.app'
  app 'ReaMote64.app'

  zap delete: [
                '~/Library/Saved Application State/com.cockos.reaper.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
                '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
                '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
              ],
      trash:  '~/Library/Application Support/REAPER'
end
