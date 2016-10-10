cask 'firetask' do
  version '3.8.1'
  sha256 '6cbec2939c62125baa371f982540b64df8524432ce58232eb43b2473b753f646'

  url "http://downloads.firetask.com/firetask-mac/Firetask-Mac-#{version}.zip"
  appcast 'http://www.firetask.com/firetask-mac/updates/firetask-mac.xml',
          checkpoint: 'b9ec9115c1572cd14a8140966c30dbea1528e789b957fbfa5289683287d0cbec'
  name 'FireTask'
  homepage 'http://firetask.com'

  depends_on macos: '>= :mountain_lion'

  app "Firetask-Mac-#{version}/Firetask.app"
end
