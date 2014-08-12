class Linkliar < Cask
  version 'latest'
  sha256 :no_check

  url 'https://github.com/halo/LinkLiar/blob/master/latest_build/LinkLiar.zip?raw=true'
  homepage 'https://github.com/halo/LinkLiar'

  prefpane 'LinkLiar.prefPane'
end
