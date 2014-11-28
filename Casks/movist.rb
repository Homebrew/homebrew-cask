cask :v1 => 'movist' do
  version :latest
  sha256 :no_check

  url 'https://github.com/downloads/samiamwork/Movist/Movist.app.zip'
  homepage 'https://github.com/samiamwork/Movist'
  license :oss

  app 'Movist.app'
end
