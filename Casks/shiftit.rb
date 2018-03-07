cask 'shiftit' do
  version '1.6.6'
  sha256 '858045662074579856a521dcf967ddfc818f68583ddc96fe73612d82e071bd00'

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  appcast 'https://github.com/fikovnik/ShiftIt/releases.atom',
          checkpoint: '11b1aa009aaf1a83ba4e92d7eb4fbaf803e64caee67e2758151bf4575a7283fd'
  name 'ShiftIt'
  homepage 'https://github.com/fikovnik/ShiftIt/'

  auto_updates true

  app 'ShiftIt.app'

  zap trash: [
               '~/Library/Application Support/ShiftIt',
               '~/Library/Caches/org.shiftitapp.ShiftIt',
               '~/Library/Preferences/org.shiftitapp.ShiftIt.plist',
             ]
end
