cask 'gzdoom' do
  version '4.3.1'
  sha256 '50ea5171ec52bfc43971c772d34a892003294803453701b553fa9f769522c1ca'

  # github.com/coelckers/gzdoom was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-#{version.dots_to_hyphens}-macOS.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
