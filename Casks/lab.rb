cask 'lab' do
  version '0.0.73'
  sha256 '0c9e35fbca8b43bfe5287e772ccff8627e18112a85f93de720e51914c08f8fb6'

  # github.com/c8r/lab was verified as official when first introduced to the cask
  url "https://github.com/c8r/lab/releases/download/v#{version}/Lab-#{version}-mac.zip"
  appcast 'https://github.com/c8r/lab/releases.atom'
  name 'Lab'
  homepage 'https://compositor.io/lab/'

  app 'Lab.app'
end
