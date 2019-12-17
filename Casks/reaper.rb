cask 'reaper' do
  version '6.20.0,602'

  if MacOS.version <= :mojave
    sha256 '05f5eedf73ece7f928c32aa7bdc0bfd799503f3f9fba5a2ed990b6ee4237e91e'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma}_x86_64.dmg"
  else
    sha256 'b85b2ccd3f95faf5b91fb2fc572114d25ce246a12ef4775dba25090c308ecb2d'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma}_x86_64_catalina.dmg"
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
