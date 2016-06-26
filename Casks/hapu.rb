cask 'hapu' do
  version '2.4'
  sha256 '5a5a2d627b7862b43d231c00de849954340d00097bbab01c2615efefc0600be8'

  url 'http://tars.mahdi.jp/squirrel/hapu.zip'
  appcast 'https://mahdi.jp/apps/hapu/changelog',
          checkpoint: '16e15f67997b466f0a378a3ad1c1f0bebb0fe89392cb977589bc981a8aacca3d'
  name 'HAPU'
  homepage 'https://mahdi.jp/apps/hapu'
  license :closed

  app 'HAPU.app'
end
