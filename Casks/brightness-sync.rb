cask 'brightness-sync' do
  version '2.0.1'
  sha256 'f522c7422bb0958a4406e9f2ec431681771dfdfe1e134f0169d630927bc62e98'

  url "https://github.com/OCJvanDijk/Brightness-Sync/releases/download/v#{version}/Brightness.Sync.app.zip"
  appcast 'https://github.com/OCJvanDijk/Brightness-Sync/releases.atom'
  name 'Brightness Sync'
  homepage 'https://github.com/OCJvanDijk/Brightness-Sync'

  depends_on macos: '>= :catalina'

  app 'Brightness Sync.app'
end
