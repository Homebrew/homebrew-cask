cask 'maratis' do
  version '3.21-beta'
  sha256 '7ec6dd97f1ce1ce09e08df0947fcb6ceb7a9f63024998f44afed3d3965829707'

  url "http://maratis3d.org/download/archive/Maratis-#{version}-osx10.6.zip"
  appcast 'http://www.maratis3d.org/?page_id=57',
          checkpoint: '25042e2459b0727346e446c22c539bc64db4b322e273005a97956b52e7a0be39'
  name 'Maratis'
  homepage 'http://www.maratis3d.org/'

  app 'Maratis.app'
  app 'MaratisPlayer.app'
end
