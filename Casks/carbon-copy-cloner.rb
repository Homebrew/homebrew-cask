cask 'carbon-copy-cloner' do
  version '4.1.14.4543'
  sha256 '158908f6cf6ef76485aa708482440652745968d5866ce542762b6efe5758f6ca'

  url "https://bombich.com/software/download_ccc_update.php?v=#{version}"
  appcast 'https://bombich.com/software/updates/ccc.php',
          checkpoint: 'eec027f0d0aa576e292b4fe57441f1821409c6295330787dd82533b0d483cb26'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'

  postflight do
    suppress_move_to_applications
  end
end
