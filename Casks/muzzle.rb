cask 'muzzle' do
  version '1.5,304'
  sha256 '2f3c3c839787408d5b991651b5ba25323a12904b4d155e8074f68e7afea3f845'

  url "https://muzzleapp.com/binaries/muzzle-#{version.after_comma}.zip"
  appcast 'https://muzzleapp.com/api/1/appcast.xml'
  name 'Muzzle'
  homepage 'https://muzzleapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Muzzle.app'
end
