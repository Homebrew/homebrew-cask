cask 'arq' do
  version '4.15'
  sha256 '72ebd8ce6afaabbede487ed99f2b88f9418d741a3bceb685c1288a9f71d4a12f'

  url "https://www.arqbackup.com/download/Arq_#{version}.zip"
  appcast "https://www.arqbackup.com/download/arq#{version.major}.xml",
          checkpoint: '48c791e8e25fef54b1f2ebd4405ecedd36aa7f7b7b197f04de85627a2ebf1b02'
  name 'Arq'
  homepage 'https://www.arqbackup.com/'
  license :commercial

  app 'Arq.app'

  postflight do
    suppress_move_to_applications
  end
end
