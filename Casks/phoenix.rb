cask :v1 => 'phoenix' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/sdegutis/phoenix/master/Builds/Phoenix-LATEST.app.tar.gz'
  name 'Phoenix'
  homepage 'https://github.com/sdegutis/Phoenix'
  license :mit

  app 'Phoenix.app'

  zap :delete => '~/.phoenix.js'
end
