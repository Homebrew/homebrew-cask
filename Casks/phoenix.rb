cask :v1 => 'phoenix' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/jasonm23/phoenix/master/Builds/Phoenix-LATEST.app.tar.gz'
  name 'Phoenix'
  homepage 'https://github.com/jasonm23/Phoenix'
  license :mit

  app 'Phoenix.app'

  zap :delete => '~/.phoenix.js'
end
