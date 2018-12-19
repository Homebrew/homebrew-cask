cask 'alfaview' do
  version '6.22575'
  sha256 '0bb3613cc27c2984842f5747b497da3110e93f0b8f26103ce2a0af4070227f5f'

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  name 'Alfaview'
  homepage 'https://alfaview.com/'

  app 'alfaview.app'

  zap trash: '~/Library/Application Support/alfaview'
end
