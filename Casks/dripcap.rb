cask 'dripcap' do
  version '0.3.10'
  sha256 '7680f1aaa75c8c16a4e749383a608e892ae418cf2d9854823342ecb3c3627f0e'

  # github.com/dripcap was verified as official when first introduced to the cask
  url "https://github.com/dripcap/dripcap/releases/download/v#{version}/dripcap-darwin-amd64.dmg"
  appcast 'https://github.com/dripcap/dripcap/releases.atom',
          checkpoint: '2ece84a697f186a233ed4858669fbbcf76fc0b8223eac787a405868eed8be66a'
  name 'Dripcap'
  homepage 'https://dripcap.org/'
  license :mit

  app 'Dripcap.app'
end
