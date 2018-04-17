cask 'fish' do
  version '2.7.1'
  sha256 'd37f093702ef7f05e11333ceb8a1a859452395720b75f5bbbe4851e20157f452'

  # github.com/fish-shell/fish-shell was verified as official when first introduced to the cask
  url "https://github.com/fish-shell/fish-shell/releases/download/#{version}/fish-#{version}.app.zip"
  appcast 'https://fishshell.com/release_notes.html',
          checkpoint: 'd4345708490da3b072c98441c94e7b2c379d9dba141ed0e602e44f81624b62c3'
  name 'Fish App'
  homepage 'https://fishshell.com/'

  depends_on macos: '>= :snow_leopard'

  app 'fish.app'
end
