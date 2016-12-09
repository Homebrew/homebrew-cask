cask 'carbon-copy-cloner' do
  version '4.1.12.4485'
  sha256 '7f3aec364bbe77a166207523d40d313fcf37133df6202e629efac19e2ab46395'

  url "https://bombich.com/software/download_ccc_update.php?v=#{version}"
  appcast "https://bombich.com/software/updates/ccc.php?os_minor=11&os_bugfix=#{version.major}&ccc=#{version.after_comma}&beta=0&locale=en",
          checkpoint: '1b64d38745f95986b8b0e0bf1b72341cc4a46616bd17226dec102a32b81c3b5a'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'

  app 'Carbon Copy Cloner.app'

  postflight do
    suppress_move_to_applications
  end
end
