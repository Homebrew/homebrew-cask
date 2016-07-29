cask 'epichrome' do
  version '2.1.11'
  sha256 '5f976ca5ad29856bb6e9bde6cb9c6bd1f943bb2ba5c2f76d2804c772a1e65137'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: 'da7ad775a89482e4d9301263f831d486d571ddf60800eb91b32a23dc5b644a0c'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'
  license :gpl

  app 'Epichrome.app'
end
