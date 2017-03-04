cask 'pophub' do
  version '0.0.1'
  sha256 '5471dee854bed85394381a28ab60875c4d0196cf69b41cf63a8ce4a61cbff7c0'

  url "https://github.com/questbeat/PopHub-Electron/releases/download/v#{version}/PopHub-darwin-x64.zip"
  appcast 'https://github.com/questbeat/PopHub-Electron/releases.atom',
          checkpoint: '2976fdb95c11370d8ba43436dc894700688cb364297166d04afafa1fd8c85512'
  name 'PopHub'
  homepage 'https://github.com/questbeat/PopHub-Electron'

  app 'PopHub.app'
end
