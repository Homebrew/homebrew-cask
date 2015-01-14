cask :v1 => 'chameleon-ssd-optimizer' do
  version :latest
  sha256 :no_check

  url 'http://chameleon.alessandroboschini.it/download.php'
  appcast 'http://chameleon.alessandroboschini.it/sparkle/profileInfo.php'
  homepage 'http://chameleon.alessandroboschini.it/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Chameleon SSD Optimizer.app'
end
