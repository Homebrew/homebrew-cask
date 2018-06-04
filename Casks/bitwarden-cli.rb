cask 'bitwarden-cli' do
  version '1.0.0'
  sha256 '4ed81213fe796025c171243ef9c6e66a95a40d9650e87fc86c7e401769cc63d8'

  # github.com/bitwarden/cli was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/cli/releases/download/v#{version}/bw-macos-#{version}.zip"
  appcast 'https://github.com/bitwarden/cli/releases.atom',
          checkpoint: '099705c259c7df5a1f9da4a22ed242ee847de03cba4d4a88cae57e139f17beeb'
  name 'Bitwarden CLI'
  homepage 'https://bitwarden.com/'

  binary 'bw'
end
