cask 'reaper' do
  version '6.11.0,6.11'

  if MacOS.version <= :mojave
    sha256 '8dc23a1c1add16e7561eaec7ae4197f659d798d9b6cb0608e2efaf1e9b0cea86'

    url "https://www.reaper.fm/files/#{version.major}.x/reaper#{version.after_comma.no_dots}_x86_64.dmg"
  else
    sha256 '54123951f0709d34037a546c7dd9788248448d0bc02bee20e8b94da6589377a3'

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
