cask 'arq' do
  version '5.1.7'
  sha256 'ce104b7eb7409972f33aab5150d520d803e809b5c4f9bca6da43eb65fcb1cfe1'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '221f228c302eae16f363c2b4b6cdca4c32b7b004133f02ef360f9caa75efab80'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
