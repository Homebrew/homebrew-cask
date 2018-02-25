cask 'bitwarden' do
  version '0.0.16'
  sha256 'c375da10df8a654527de87a0609e6299cf3d40ffa2f1c567e3440561d6b59499'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: 'c180398304e7f0063ecb2e073e45505151f2e6525a3786011ecb1b7c48221910'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
