cask 'beoplay-software-update' do
  version '1.0.6'
  sha256 '7e0500f935557f34d46625e4abe7081cdaa343558a973d3284000ab4c37b21a6'

  url "https://www.bang-olufsen.com/~/mediaV3/files/software-downloads/beoplay-software-updater/beoplay-software-updater-#{version.dots_to_hyphens}-mac.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=#{url}",
          must_contain: version.dots_to_hyphens
  name 'Beoplay Software Update'
  homepage 'https://www.bang-olufsen.com/en/product-support/accessories/beoplay-software-updater'

  app 'Beoplay Software Update.app'
end
