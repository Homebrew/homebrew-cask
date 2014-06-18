class Changes < Cask
  url 'http://bitbq.com/changes/download.php'
  appcast 'https://bitbq_changes.s3.amazonaws.com/changes-production.xml'
  homepage 'http://bitbq.com/changes/'
  version 'latest'
  sha256 :no_check
  link 'Changes.app'
end
