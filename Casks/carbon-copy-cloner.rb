cask 'carbon-copy-cloner' do
  version '4.1.8,4360'
  sha256 'c1e4c13efb56814ae2ddfb954169747dfbb051d6704220ece8d4fb14a45a6d75'

  url "http://bombich.com/software/files/ccc-#{version.before_comma}.#{version.after_comma}.zip"
  appcast "https://bombich.com/software/updates/ccc.php?os_minor=11&os_bugfix=#{version.major}&ccc=#{version.after_comma}&beta=0&locale=en",
          checkpoint: '61d5007912a0a979a8b1efd7693229cd7125fbca11c60e244e4114d285c32abe'
  name 'Carbon Copy Cloner'
  homepage 'https://bombich.com/'
  license :commercial

  app 'Carbon Copy Cloner.app'

  postflight do
    suppress_move_to_applications
  end
end
