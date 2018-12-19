cask 'sirimote' do
  version '1.2.9'
  sha256 'b5e713f7d38f95f6c0608f71ca03bf8fc671c17b212f5c37ed902d059e01c06b'

  url 'https://eternalstorms.at/sirimote/SiriMote.zip'
  appcast 'https://eternalstorms.at/sirimote/updatefeed.xml'
  name 'SiriMote'
  homepage 'https://eternalstorms.at/sirimote'

  app 'SiriMote.app'
end
