cask 'ace-link' do
  version '1.4.0'
  sha256 '06ef8d14b451209a4f7122c511d4c45005f371a75d81d1b9e5f9b80ae1174a10'

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
end
