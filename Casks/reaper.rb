cask 'reaper' do
  version '6.30.0,6.03'

  if MacOS.version <= :mojave
    sha256 'b029ba6593cfb554b5c46b468bc55980439bef755e041a821358bf184bd9dc73'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64.dmg"
  else
    sha256 '0bc2a7a642193c8808e498999226539388d24b86b9956cf858130c3b8894135e'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64_catalina.dmg"
  end

  appcast 'https://www.cockos.com/reaper/latestversion/?p=osx_64',
          configuration: version.after_comma
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
