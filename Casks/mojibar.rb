cask 'mojibar' do
  version '2.2.1'
  sha256 '2b2afbae63c30c6eb997b431d4e0e0d8006bcdcc8cec5023f6369947382aa759'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '78a98a35dcd4cae85428e96cdd73f8965778ef4971518784001de69c7e5969d4'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'
  license :mit

  app 'Mojibar-darwin-x64/Mojibar.app'
end
