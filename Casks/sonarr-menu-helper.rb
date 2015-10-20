cask :v1 => 'sonarr-menu-helper' do
  version '2.2'
  sha256 'a46ace8316b873823adb829719a7b91780194a89d313a9bb313a9677e4fda78f'

  url "https://github.com/jefbarn/Sonarr/releases/download/#{version}/Sonarr.zip"
  appcast 'https://github.com/jefbarn/Sonarr/releases.atom'
  name 'Sonarr Menu Helper'
  homepage 'https://github.com/jefbarn/Sonarr'
  license :unknown

  app 'Sonarr.app'

  depends_on :cask => 'mono-mdk'
  conflicts_with :cask => 'sonarr'
end
