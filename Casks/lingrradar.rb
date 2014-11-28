cask :v1 => 'lingrradar' do
  version '2.26'
  sha256 'c1883e5bb0d31055a34651c1315dd5fdbdc5126dc493a84ea40cf518e4ff23b6'

  url "http://radar.lingr.com/mac/LingrRadar_#{version}.tbz"
  appcast 'http://radar.lingr.com/mac_appcast.xml',
          :sha256 => '20a15fbbc8fdc131a97407cd38cd80fc0f7cbef9895c62353f5111b0fbc44948'
  homepage 'http://radar.lingr.com/'
  license :unknown

  app 'LingrRadar.app'
end
