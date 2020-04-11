cask 'brightness-sync' do
  version '2.1.0'
  sha256 '8b0340aff27984332948abd09c86d93a3f26e50d832e784c6b953bb8c9b8b79a'

  url "https://github.com/OCJvanDijk/Brightness-Sync/releases/download/v#{version}/Brightness.Sync.app.zip"
  appcast 'https://github.com/OCJvanDijk/Brightness-Sync/releases.atom'
  name 'Brightness Sync'
  homepage 'https://github.com/OCJvanDijk/Brightness-Sync'

  depends_on macos: '>= :catalina'

  app 'Brightness Sync.app'
end
