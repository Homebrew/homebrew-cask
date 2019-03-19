cask 'macpass' do
  version '0.7.4'
  sha256 'd8fc5a988f984cdf31032fc571b5f7383f3f670be6977d25121e26c73a23c5de'

  # github.com/MacPass/MacPass was verified as official when first introduced to the cask
  url "https://github.com/MacPass/MacPass/releases/download/#{version}/MacPass-#{version}.zip"
  appcast 'https://github.com/MacPass/MacPass/releases.atom'
  name 'MacPass'
  homepage 'https://macpass.github.io/'

  depends_on macos: '>= :yosemite'

  app 'MacPass.app'
end
