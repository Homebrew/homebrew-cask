cask 'brisk' do
  version '0.2.2'
  sha256 'ec17a4ad7e150ab036c62f692703948cea8dca5ee6f2476c00c194bf28513726'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: '66a6e11873950b1e6eea0d455de432e74837b4c4b5a118699272a83a90405da6'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
