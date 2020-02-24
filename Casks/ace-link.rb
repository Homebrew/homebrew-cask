cask 'ace-link' do
  version '1.5.0'
  sha256 '1fc3da543dd1749b1aa18b324f5bbfaf2d5205129caf731ae91420742e369895'

  url "https://github.com/blaise-io/acelink/releases/download/#{version}/Ace.Link.#{version}.dmg"
  appcast 'https://github.com/blaise-io/acelink/releases.atom'
  name 'Ace Link'
  homepage 'https://github.com/blaise-io/acelink'

  depends_on macos: '>= :high_sierra'
  depends_on cask: [
                     'vlc',
                     'docker',
                   ]

  app 'Ace Link.app'

  uninstall quit: 'blaise.io.acelink'

  zap trash: '~/Library/Application Support/Ace Link'
end
