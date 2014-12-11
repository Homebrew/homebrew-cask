cask :v1 => 'poison' do
  version :latest
  sha256 :no_check

  url 'http://jenkins.tox.im/job/Poison_OS_X/lastSuccessfulBuild/artifact/arc/poison-with-extras.zip'
  homepage 'http://tox.im'
  license :unknown    # todo: improve this machine-generated value

  app 'poison-with-extras/Poison.app'
  app 'poison-with-extras/Silica.app'
  app 'poison-with-extras/Hibiki.app'
end
