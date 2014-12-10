cask :v1 => 'changes' do
  version :latest
  sha256 :no_check

  url 'http://bitbq.com/changes/download.php'
  appcast 'https://bitbq_changes.s3.amazonaws.com/changes-production.xml'
  homepage 'http://bitbq.com/changes/'
  license :unknown    # todo: improve this machine-generated value

  app 'Changes.app'
end
