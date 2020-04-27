cask 'brightness-sync' do
  version '2.1.1'
  sha256 '8dd89559e9bc35de803878bece6c2bfdc161c3ff11e1b06c88009cce9233d36a'

  url "https://github.com/OCJvanDijk/Brightness-Sync/releases/download/v#{version}/Brightness.Sync.app.zip"
  appcast 'https://github.com/OCJvanDijk/Brightness-Sync/releases.atom'
  name 'Brightness Sync'
  homepage 'https://github.com/OCJvanDijk/Brightness-Sync'

  depends_on macos: '>= :catalina'

  app 'Brightness Sync.app'
end
