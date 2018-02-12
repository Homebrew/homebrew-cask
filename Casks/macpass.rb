cask 'macpass' do
  version '0.7.3'
  sha256 '1551b9db0e275827ab99e80a14980dcc1c1e20e47bdb65c0140e618407f150c2'

  # github.com/MacPass/MacPass was verified as official when first introduced to the cask
  url "https://github.com/MacPass/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/MacPass/MacPass/releases.atom',
          checkpoint: 'ea1645fadb971b817c28d5743c123a2c8cb160b25cf99920516ec439014ed163'
  name 'MacPass'
  homepage 'https://macpass.github.io/'

  depends_on macos: '>= :yosemite'

  app 'MacPass.app'
end
