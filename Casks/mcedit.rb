cask 'mcedit' do
  version '1.5.2.0'
  sha256 '93fd86b1cbe59965bfc246cead9de77271a01c2129109734032a2e29e05f6116'

  # github.com/Khroki/MCEdit-Unified was verified as official when first introduced to the cask
  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          checkpoint: '8a77353aef92a298a272281246815a9f9a460a18f482986fb59875564508ad91'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
