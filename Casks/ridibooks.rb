class Ridibooks < Cask
  url 'http://ridibooks.com/getapp?os=mac'
  homepage 'http://ridibooks.com/support/introduce_appdown'
  version 'latest'
  sha256 :no_check
  container_type :naked
  before_install do
    system '/bin/mv', '--', destination_path.join('getapp'), destination_path.join('ridibooks.pkg')
  end
  install 'ridibooks.pkg'
  uninstall :pkgutil => 'com.ridibooks.Ridibooks'
end
