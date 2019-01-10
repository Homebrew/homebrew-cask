cask 'swamp' do
  version '0.9.1'
  sha256 '07072fe149acd4d354179980c035758787b58646d9c012b0d12034a4ae0d428b'

  url "https://github.com/felixb/swamp/releases/download/v#{version}/swamp_darwin"
  appcast 'https://github.com/felixb/swamp/releases.atom'
  name 'swamp'
  homepage 'https://github.com/felixb/swamp'

  binary 'swamp_darwin', target: 'swamp'
end
