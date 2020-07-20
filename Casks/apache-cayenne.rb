cask 'apache-cayenne' do
  version '4.0.2'
  sha256 '3f6bf833019002b3ffd502ba7e5a96ac17382741035834d26efefdc8d70d8a91'

  url 'https://downloads.apache.org/cayenne/4.0.2/cayenne-4.0.2-macosx.dmg'
  appcast 'https://github.com/apache/cayenne/releases.atom'
  name 'Apache Cayenne'
  homepage 'https://cayenne.apache.org/'

  app 'CayenneModeler.app'
end
