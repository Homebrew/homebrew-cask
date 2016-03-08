cask 'arq' do
  version '4.15.1'
  sha256 '537d7872e2843a191bb1090e708bb48aedfa83dd2db616da25b792c013b8eb33'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '537720fc6b4b69b44ccc36ff81198d378fedae8a2783589cbbd8d730a98396ea'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
