cask 'kitty' do
  version '0.7.1'
  sha256 'db84d8bcc09c89bcf889caecef313c5034e0945fd2abe1fc50449b6b605694bb'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '211e54fdd1e18f33049d9e0ac4a2f4cc95765d393764025e5d1e26418badd784'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
