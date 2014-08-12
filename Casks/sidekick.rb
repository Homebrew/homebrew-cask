class Sidekick < Cask
  version 'latest'
  sha256 :no_check

  url 'http://oomphalot.com/sidekick/release/Sidekick.zip'
  appcast 'http://updates.oomphalot.com/?app=Sidekick'
  homepage 'http://oomphalot.com/sidekick/'

  link 'Sidekick.app'
end
