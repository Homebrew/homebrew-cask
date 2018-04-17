cask 'epichrome' do
  version '2.1.20'
  sha256 'c2853e73d9b13ed59ee16a478e3e8ad7e27e1ebb8f18e03984a72e04830f6dfe'

  url "https://github.com/dmarmor/epichrome/releases/download/v#{version}/epichrome-#{version}.dmg"
  appcast 'https://github.com/dmarmor/epichrome/releases.atom',
          checkpoint: '806b74de039f75312a2a161298dc39037958e277b173fdbf6f492311c2c7f22a'
  name 'Epichrome'
  homepage 'https://github.com/dmarmor/epichrome'

  app 'Epichrome.app'
end
