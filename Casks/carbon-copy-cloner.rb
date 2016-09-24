cask 'carbon-copy-cloner' do
  version '4.1.10.4425'
  sha256 '81ff5bc95fea7fdc066acf508a49c840d9d5377e699323ee925c31c030dde1d3'

  url "https://bombich.com/software/download_ccc_update.php?v=#{version}"
  appcast "https://bombich.com/software/updates/ccc.php?os_minor=11&os_bugfix=#{version.major}&ccc=#{version.after_comma}&beta=0&locale=en",
          checkpoint: '1b64d38745f95986b8b0e0bf1b72341cc4a46616bd17226dec102a32b81c3b5a'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'
  license :commercial

  app 'Carbon Copy Cloner.app'

  postflight do
    suppress_move_to_applications
  end
end
