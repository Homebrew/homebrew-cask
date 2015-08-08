cask :v1 => 'firetask' do
  version '3.7.5'
  sha256 'fe8ca19270ce248dd78fdba0183ee2e9f6b69a889f8e6b66974f4ed8e3b81e8d'

  url "http://downloads.firetask.com/firetask-mac/Firetask-Mac-#{version}.zip"
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          :sha256 => '421a92beebdd8ca567396d43cab5d540fb24bc8a55f6cefc7ba6720f9a537921'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :commercial

  depends_on :macos => '>= :mountain_lion'

  app "Firetask-Mac-#{version}/Firetask.app"
end
