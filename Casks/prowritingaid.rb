cask 'prowritingaid' do
  version '2.0.42'
  sha256 'a45f7f1875c6e871b6d8f2a91230e28d1c78e2977e9f073f0299ae70b76ca84d'

  url "https://cdn.prowritingaid.com/prowritingaid-desktop/desktop_#{version.dots_to_underscores}/ProWritingAid.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://prowritingaid.com/en/Download/DesktopAppMacPM',
          must_contain: version.dots_to_underscores
  name 'ProWritingAid'
  homepage 'https://prowritingaid.com/'

  app 'ProWritingAid.app'
end
