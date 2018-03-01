cask 'sirimote' do
  version '1.2.9'
  sha256 'b5e713f7d38f95f6c0608f71ca03bf8fc671c17b212f5c37ed902d059e01c06b'

  url 'https://eternalstorms.at/sirimote/SiriMote.zip'
  appcast 'https://eternalstorms.at/sirimote/updatefeed.xml',
          checkpoint: 'e61d659d6095c55909ee531cc78369c69c4f0ec4c308927c5f58a249e945be23'
  name 'SiriMote'
  homepage 'http://eternalstorms.at/sirimote'

  app 'SiriMote.app'
end
