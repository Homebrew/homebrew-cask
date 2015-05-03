cask :v1 => 'auftakt' do
  version '1.1'
  sha256 '817d851d0ba416426dba62e215d8a855c13742070e2b4b12898f721f3277583d'
  url "http://itok.jp/software/Auftakt_v110.dmg"
  name 'Auftakt'
  homepage 'http://itok.jp/software/auftakt/'

  prefpane 'Auftakt.prefPane'

  zap :delete => '~/Library/PreferencePanes/Auftakt.prefPane'
end
