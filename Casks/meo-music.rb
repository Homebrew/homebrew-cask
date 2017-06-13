cask 'meo-music' do
  version '3.1.02'
  sha256 '3f7ecbe78e57a2afda691be649aa99c2a07d6d570a45aedbafd83872727158b7'

  url "https://music.meo.pt/player/MEO_Music_v#{version}.dmg"
  appcast 'http://services.sapo.pt/Application/Catalog/Update/JSON?appid=pt.sapo.macos.musicbox',
          checkpoint: '081e8f177da9676eac5b482c34faaee09942d30247ee6466bcbac72a0ac9ce25'
  name 'Meo Music'
  homepage 'https://music.meo.pt/'

  app 'MEO Music.app'

  zap delete: [
                '~/Library/Caches/pt.tmn.musicbox',
                '~/Library/Caches/nmusic',
              ]
end
