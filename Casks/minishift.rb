cask 'minishift' do
  version '0.5.0'
  sha256 'e6fa6215d8d56d77ceddf8c4d64ee8724861a4bb9c5b4c7d394bf0f97ced70ac'

  url "https://github.com/jimmidyson/minishift/releases/download/v#{version}/minishift-darwin-amd64"
  appcast 'https://github.com/jimmidyson/minishift/releases.atom',
          checkpoint: '325daef93cc076642bae49d528bb4a36540e3591ad6ab96c8447e516d2612ef1'
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
