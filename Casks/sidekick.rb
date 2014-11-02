class Sidekick < Cask
  version :latest
  sha256 :no_check

  url 'http://oomphalot.com/sidekick/release/Sidekick.zip'
  appcast 'http://updates.oomphalot.com/?app=Sidekick'
  homepage 'http://oomphalot.com/sidekick/'
  license :unknown

  app 'Sidekick.app'

  postflight do
    suppress_move_to_applications
  end
end
