cask :v1 => 'linkliar' do
  version :latest
  sha256 :no_check

  url 'https://github.com/halo/LinkLiar/blob/master/latest_build/LinkLiar.zip?raw=true'
  homepage 'https://github.com/halo/LinkLiar'
  license :oss

  prefpane 'LinkLiar.prefPane'
end
