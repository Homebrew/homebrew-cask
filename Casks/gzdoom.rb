cask 'gzdoom' do
  version '4.4.1'
  sha256 '9dd083cc8f65060698f300c274eefea8364987a4a548524a446f703330b91fb6'

  # github.com/coelckers/gzdoom/ was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
