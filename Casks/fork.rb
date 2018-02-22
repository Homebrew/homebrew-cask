cask 'fork' do
  version '1.0.64'
  sha256 'c0ded0d45c0ddb16aa25175ff92623476bfe0a2499dae2a29eff639775838fc1'

  url 'https://git-fork.com/update/files/Fork.dmg'
  appcast 'https://git-fork.com/update/feed.xml',
          checkpoint: '8f2971127c89bbe519d0e47581473502f99e2ed1c895d6167222a5d6e3f81708'
  name 'Fork'
  homepage 'https://git-fork.com/'

  auto_updates true

  app 'Fork.app'

  zap trash: [
               '~/Library/Application Support/com.DanPristupov.Fork',
               '~/Library/Caches/com.DanPristupov.Fork',
               '~/Library/Preferences/com.DanPristupov.Fork.plist',
               '~/Library/Saved Application State/com.DanPristupov.Fork.savedState',
             ]
end
