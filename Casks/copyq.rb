cask 'copyq' do
  version '2.8.1'
  sha256 'f599b647bdb39933697b3c989b64bb2433f8a64375a28cb45f7bdde38038fc83'

  # github.com/hluk/CopyQ was verified as official when first introduced to the cask
  url "https://github.com/hluk/CopyQ/releases/download/v#{version}/CopyQ.dmg"
  appcast 'https://github.com/hluk/CopyQ/releases.atom',
          checkpoint: '59782e9ffbd154df25164c86833ebb4f287f3c0b4d5baf96acf35f84a5557843'
  name 'CopyQ'
  homepage 'https://hluk.github.io/CopyQ/'

  app 'CopyQ.app'
end
