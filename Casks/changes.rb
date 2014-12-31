cask :v1 => 'changes' do
  version :latest
  sha256 :no_check

  url 'http://bitbq.com/changes/download.php'
  appcast 'https://bitbq_changes.s3.amazonaws.com/changes-production.xml'
  homepage 'http://bitbq.com/changes/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Changes.app'
end
