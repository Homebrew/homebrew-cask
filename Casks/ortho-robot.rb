cask :v1 => 'ortho-robot' do
  version :latest
  sha256 :no_check

  url 'http://stabyourself.net/dl.php?file=orthorobot/orthorobot-osx.zip'
  homepage 'http://stabyourself.net/orthorobot/'
  license :oss

  app 'Ortho Robot.app'
end
