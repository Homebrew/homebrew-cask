cask 'lab' do
  version '0.0.71'
  sha256 'ab6f4a61560c193d65edf6df19f99d7209dbd78c3857ffcf06557620738862cd'

  # github.com/c8r/lab was verified as official when first introduced to the cask
  url "https://github.com/c8r/lab/releases/download/v#{version}/Lab-#{version}-mac.zip"
  appcast 'https://github.com/c8r/lab/releases.atom',
          checkpoint: '83127ae76c94af2569b140b28c51fbd90fcca6b5f63aefb705bdbfa1db911b4d'
  name 'Lab'
  homepage 'https://compositor.io/lab/'

  app 'Lab.app'
end
