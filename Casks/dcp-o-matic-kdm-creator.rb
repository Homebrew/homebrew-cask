cask 'dcp-o-matic-kdm-creator' do
  version '2.14.14'
  sha256 '9edb66bcc0abb4a1aa7f01b630d4ad6ca32ef099edc89eaf0d0261e89f0ae267'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
