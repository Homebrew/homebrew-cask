cask 'macpass' do
  version '0.7.5'
  sha256 'fc1de9be1b3faa6d9b1e5b227d2ef53133168313594101c94a3cb0179777ee71'

  # github.com/MacPass/MacPass was verified as official when first introduced to the cask
  url "https://github.com/MacPass/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/MacPass/MacPass/releases.atom'
  name 'MacPass'
  homepage 'https://macpass.github.io/'

  depends_on macos: '>= :yosemite'

  app 'MacPass.app'
end
