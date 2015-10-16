cask :v1 => 'mention' do
  version :latest
  sha256 :no_check

  url 'https://en.mention.com/downloads/mac/mention.dmg'
  name 'Mention'
  appcast 'https://web.mention.com/uploads/appcast-mention.xml',
          :sha256 => 'e3ee4b1624ab193b8236392da1c2051ca1ad5d8bf1c6baae76fed80cfd9d59c4'
  homepage 'https://en.mention.com/'
  license :gratis

  app 'Mention.app'
end
