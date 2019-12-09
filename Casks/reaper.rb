cask 'reaper' do
  version '6.01'

  if MacOS.version <= :mojave
    sha256 '05f5eedf73ece7f928c32aa7bdc0bfd799503f3f9fba5a2ed990b6ee4237e91e'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.no_dots}_x86_64.dmg"
  else
    sha256 'f53b892b0337f147206a2842aafe3c9cd3d1217cf1bc439cb513aec7198119fa'

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
