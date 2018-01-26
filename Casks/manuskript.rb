cask 'manuskript' do
  version '0.6.0'
  sha256 '1a1e1ef9d6efdce309097adf5eb7f481c654d342e8ab2bd6f451977bf184e9fb'

  # github.com/olivierkes/manuskript was verified as official when first introduced to the cask
  url "https://github.com/olivierkes/manuskript/releases/download/#{version}/manuskript-#{version}-osx.zip"
  appcast 'https://github.com/olivierkes/manuskript/releases.atom',
          checkpoint: 'e9d48a2ce486d87e3a0fa4d435f54b52c061f0dcc7621c3cea48e914ef78a539'
  name 'Manuskript'
  homepage 'http://www.theologeek.ch/manuskript/'

  binary 'manuskript/manuskript'
end
