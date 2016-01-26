cask 'linkliar' do
  version :latest
  sha256 :no_check

  url 'https://github.com/halo/LinkLiar/blob/master/latest_build/LinkLiar.zip?raw=true'
  name 'LinkLiar'
  homepage 'https://github.com/halo/LinkLiar'
  license :mit

  prefpane 'LinkLiar.prefPane'
end
