cask 'reaper' do
  version '6.0'

  if MacOS.version <= :mojave
    sha256 '589977a587aa510d7430308b09383551ab32506e7a1150e38ecff533ee4fc71b'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  else
    sha256 '49a17c631faa079cda2664e9fb0fd353cbd9e56c83f407202ddacd19e2363f32'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64_catalina.dmg"
  end

  appcast 'https://www.cockos.com/reaper/latestversion/?p=osx_64'
  name 'REAPER'
  homepage 'https://www.reaper.fm/'

  app 'REAPER64.app'
  app 'ReaMote64.app'

  zap trash: [
               '~/Library/Application Support/REAPER',
               '~/Library/Saved Application State/com.cockos.reaper.savedState',
               '~/Library/Saved Application State/com.cockos.reaperhosti386.savedState',
               '~/Library/Saved Application State/com.cockos.reaperhostx8664.savedState',
               '~/Library/Saved Application State/com.cockos.ReaMote.savedState',
             ]
end
