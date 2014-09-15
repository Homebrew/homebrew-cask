class Phoenix < Cask
  version 'latest'
  sha256 :no_check

  url 'https://raw.github.com/sdegutis/phoenix/master/Builds/Phoenix-LATEST.app.tar.gz'
  homepage 'https://github.com/sdegutis/Phoenix'

  app 'Phoenix.app'
end
