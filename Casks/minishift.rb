cask 'minishift' do
  version '0.6.0'
  sha256 '472183aa33f2ba7a3992e9ce4cc69fa7bd52c9911a00e74c761259c40c0924da'

  url "https://github.com/jimmidyson/minishift/releases/download/v#{version}/minishift-darwin-amd64"
  appcast 'https://github.com/jimmidyson/minishift/releases.atom',
          checkpoint: '5b60e8a51d491f0eaf9906f9a4aa61306f64362dab56206bfff0c5f16d97c821'
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
