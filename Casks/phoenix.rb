cask :v1 => 'phoenix' do
  version :latest
  sha256 :no_check

  url 'https://raw.github.com/sdegutis/phoenix/master/Builds/Phoenix-LATEST.app.tar.gz'
  homepage 'https://github.com/sdegutis/Phoenix'
  license :oss

  app 'Phoenix.app'

  zap :delete => '~/.phoenix.js'
end
