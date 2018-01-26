cask 'phoenix' do
  version '2.6'
  sha256 'a4635be6cfa92e0ee5db3e8b46edd6886e65f9c3b116b03f8892140c6286b72c'

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast 'https://github.com/kasper/phoenix/releases.atom',
          checkpoint: 'c439c85fa22b77cd9bc3f32a717ba34bc21dca8c36acc5ee53e5273029a2827f'
  name 'Phoenix'
  homepage 'https://github.com/kasper/phoenix/'

  accessibility_access true
  depends_on macos: '>= :yosemite'

  app 'Phoenix.app'

  zap trash: [
               '~/.phoenix.js',
               '~/Library/Application Support/Phoenix/storage.json',
             ]
end
