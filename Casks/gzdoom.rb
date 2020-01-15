cask 'gzdoom' do
  version '4.3.2'
  sha256 'f655714de0827fa3d0f4b21cbfcd2174e196c2471b614198806bcb2fa580d7cc'

  # github.com/coelckers/gzdoom was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
