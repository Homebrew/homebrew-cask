cask 'minishift' do
  version '1.9.0'
  sha256 '85bee31d16b7fcbb6e62cd625d0cda9f7144682568053ea6b51b104813979fea'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '5f3bea5d81c1036b2b1d940ef54e0cc98c66dc73b880bac2cd300f62b200f821'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
