cask 'firetask' do
  version '3.8'
  sha256 '252819b6c5f33f5676ffee944b387a061c2a41e9de4b70d50bdb2158412b1683'

  url "http://downloads.firetask.com/firetask-mac/Firetask-Mac-#{version}.zip"
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          checkpoint: '339af349aca0e6329bc5aa72183c6cec6d6dc3b0500a3120852277a83c515e79'
  name 'FireTask'
  homepage 'http://firetask.com'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app "Firetask-Mac-#{version}/Firetask.app"
end
