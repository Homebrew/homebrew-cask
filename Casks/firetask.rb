cask 'firetask' do
  version '3.7.5'
  sha256 'fe8ca19270ce248dd78fdba0183ee2e9f6b69a889f8e6b66974f4ed8e3b81e8d'

  url "http://downloads.firetask.com/firetask-mac/Firetask-Mac-#{version}.zip"
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          checkpoint: '3dfbebabbaae47cc4dbafc49f00f616f4b10afc1af755ff0de9029e8d3e394bc'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app "Firetask-Mac-#{version}/Firetask.app"
end
