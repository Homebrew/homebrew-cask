cask 'carbon-copy-cloner' do
  version '4.1.10.4428'
  sha256 '1c590298b6d226dad891242f36a1af868a31ee36b2703aa9654c9768694d1178'

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
