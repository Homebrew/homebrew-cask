cask 'minishift' do
  version '0.7.1'
  sha256 '513c16718aed9fd8ce1146e7af510ee180b2c82eb435b8275abfcf262f15b3eb'

  url "https://github.com/jimmidyson/minishift/releases/download/v#{version}/minishift-darwin-amd64"
  appcast 'https://github.com/jimmidyson/minishift/releases.atom',
          checkpoint: 'b89a56830a691e79061e9fd643835e1451804268e0e2ac0d2bd63e02084ed45b'
  name 'Minishift'
  homepage 'https://github.com/jimmidyson/minishift'
  license :apache

  depends_on arch: :x86_64
  container type: :naked

  binary 'minishift-darwin-amd64', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift-darwin-amd64", '0755'
  end
end
