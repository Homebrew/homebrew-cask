cask 'isubtitle' do
  version '3.0.3'
  sha256 'c9cb7039a399becac657489c38003c071b0dbd601e7ce6558f451f53d6f17a16'

  url "http://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "http://www.bitfield.se/isubtitle#{version.major}/changelog.xml",
          checkpoint: '8c7eb54f467c9e7dfe0557e6099455bfc331ddd036327b2f4382357b4dffd5aa'
  name 'iSubtitle'
  homepage 'http://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
