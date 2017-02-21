cask 'meo-music' do
  version '3.1.02'
  sha256 '3f7ecbe78e57a2afda691be649aa99c2a07d6d570a45aedbafd83872727158b7'

  url "https://music.meo.pt/player/MEO_Music_v#{version}.dmg"
  name 'Meo Music'
  homepage 'https://music.meo.pt/'

  app 'MEO Music.app'

  zap delete: [
                '~/Library/Caches/pt.tmn.musicbox',
                '~/Library/Caches/nmusic',
              ]
end
