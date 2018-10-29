cask 'birdfont' do
  version '3.14.2'
  sha256 '4463556f7beb8e00bb33b91e4ccb5134f69987971f1cf62f5875fab719adeee5'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :sierra'

  app 'BirdFontNonCommercial.app'
end
