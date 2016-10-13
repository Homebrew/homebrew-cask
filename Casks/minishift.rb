cask 'minishift' do
  version '0.8.0'
  sha256 '7bc43cc02140f7f35222106c02b251487524f638822a1c110d5f7118868bafcc'

  url "https://github.com/jimmidyson/minishift/releases/download/v#{version}/minishift-darwin-amd64"
  appcast 'https://github.com/jimmidyson/minishift/releases.atom',
          checkpoint: '3a6eeae4c0b22e6a37ed512d34c6e5fc77a31da5774ce1fdd9d0ea0ab224b521'
  name 'Minishift'
  homepage 'https://github.com/jimmidyson/minishift'

  depends_on arch: :x86_64
  container type: :naked

  binary 'minishift-darwin-amd64', target: 'minishift'

  postflight do
    set_permissions "#{staged_path}/minishift-darwin-amd64", '0755'
  end
end
