cask 'studiolinkstandalone' do
  version '20.03.8'
  sha256 '599fcba644e4a48561b102be7e6b2391d2002b004d0938c9449b4856ba91bd33'

  # download.studio.link/ was verified as official when first introduced to the cask
  url "https://download.studio.link/releases/v#{version}-stable/osx/signed/studio-link-standalone-v#{version}-stable.zip"
  appcast 'https://gitlab.com/studio.link/app/-/tags?format=atom'
  name 'Studio Link Standalone'
  homepage 'https://studio-link.de/'

  app 'StudioLinkStandalone.app'
end
