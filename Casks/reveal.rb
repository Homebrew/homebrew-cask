cask 'reveal' do
  version '17'
  sha256 'c319812397b39062d05a445b5ee40f3d1eef304f26bb3871f1f2767bab8a8449'

  url "https://download.revealapp.com/Reveal.app-#{version}.zip"
  appcast 'https://revealapp.com/download/'
  name 'Reveal'
  homepage 'https://revealapp.com/'

  depends_on macos: '>= :sierra'

  app 'Reveal.app'
end
