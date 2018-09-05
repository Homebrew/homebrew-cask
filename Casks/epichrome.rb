cask 'epichrome' do
  version '2.2.2'
  sha256 '320049b7f30ad02530e41dc870032dc45d67e1242422851a748451c792da0330'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
