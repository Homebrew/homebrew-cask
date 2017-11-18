cask 'byteball' do
  version '1.11.5'
  sha256 'e4f6128a2de9ee716b72825ccbf077163746c8df1c7b73bbdd006e2d5a1099f3'

  # github.com/byteball/byteball was verified as official when first introduced to the cask
  url "https://github.com/byteball/byteball/releases/download/v#{version}/Byteball-osx64.dmg"
  appcast 'https://github.com/byteball/byteball/releases.atom',
          checkpoint: '432423798003751f17f1e7bb6ba3a9c1a8f48602aea71e91b9322b9be7e531ac'
  name 'Byteball'
  homepage 'https://byteball.org/'

  app 'byteball.app'

  zap trash: [
               '~/Library/Application Support/byteball',
               '~/Library/Caches/byteball',
               '~/Library/Preferences/com.nw-builder.byteball.plist',
               '~/Library/Saved Application State/com.nw-builder.byteball.savedState',
             ]
end
