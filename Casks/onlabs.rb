cask 'onlabs' do
  version '0.1.9'
  sha256 '4fa575158f80d60f40826fab0b77217cc343ca0fc4af5e7840c606a4f4bd97c5'

  url "https://github.com/lalyos/onlabs/releases/download/v#{version}/onlabs_darwin_amd64"
  appcast 'https://github.com/lalyos/onlabs/releases.atom',
          checkpoint: 'c04cfded371be6d1f1df7ac96d6ff95dc3e75ab4203d67c8f5ae480a081effa6'
  name 'onlabs'
  homepage 'https://github.com/lalyos/onlabs'
  license :mit

  container type: :naked

  binary 'onlabs_darwin_amd64', target: 'onlabs'

  postflight do
    set_permissions "#{staged_path}/onlabs_darwin_amd64", '755'
  end
end
