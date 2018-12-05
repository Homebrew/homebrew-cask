cask 'port-map' do
  version '2.0.1'
  sha256 '07cf0aeddb22a192d5fc62380e9e71946738533301573b91b39519e05cdbc5db'

  # github.com/monkeydom/TCMPortMapper was verified as official when first introduced to the cask
  url 'https://github.com/monkeydom/TCMPortMapper/releases/download/PortMap-2.0.1/PortMap-2.0.1-85.zip'
  appcast 'https://github.com/monkeydom/TCMPortMapper/releases.atom'
  name 'Port Map'
  homepage 'https://www.codingmonkeys.de/portmap'

  depends_on macos: '>= :yosemite'

  app 'Port Map.app'
end
