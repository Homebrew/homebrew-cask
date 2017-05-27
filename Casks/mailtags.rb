cask 'mailtags' do
  version '5.0.3'
  sha256 '5c618299dcbc742d7bc2287209eb8d902d512381f6cded596b0612e645e15870'

  url "https://smallcubed.com/download/mt/MailTags#{version}.dmg"
  name 'MailTags'
  homepage 'https://smallcubed.com/mt/'

  installer manual: "Install MailTags #{version.major}.app"

  uninstall pkgutil: 'ca.indev.MailTags*'

  zap delete: [
                '~/Library/Mail/Bundles/MailTags.mailbundle',
                '~/Library/Application Support/Indev/MailTagsHelper.app',
              ]
end
