class Changes < Cask
  version 'latest'
  sha256 :no_check

  url 'http://bitbq.com/changes/download.php'
  appcast 'https://bitbq_changes.s3.amazonaws.com/changes-production.xml'
  homepage 'http://bitbq.com/changes/'

  app 'Changes.app'
end
