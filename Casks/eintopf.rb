cask 'eintopf' do
  version '1.2.1'
  sha256 '0dd958d2bb1f6cf34b771fa0e81ac675ae32b37a02998b291d2fe16aa7e2cdd2'

  # github.com/mazehall/eintopf was verified as official when first introduced to the cask
  url "https://github.com/mazehall/eintopf/releases/download/#{version}/eintopf_#{version}-x64.dmg"
  appcast 'https://github.com/mazehall/eintopf/releases.atom',
          checkpoint: 'f347573bfec651714fbcd749b0d3a09a497f1f224d2175b1fd2778433a244f52'
  name 'Eintopf'
  homepage 'https://eintopf.io'
  license :mit

  app 'Eintopf.app'
end
