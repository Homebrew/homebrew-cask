cask 'nwjs' do
  version '0.30.0'
  sha256 '194acec4e0b400ee01c2987cd2a463bf7ff9e8cb8a1dc862fef3bf806d7e0a50'

  url "https://dl.nwjs.io/v#{version}/nwjs-sdk-v#{version}-osx-x64.zip"
  appcast 'https://github.com/nwjs/nw.js/releases.atom',
          checkpoint: '82b406e77f84c444cd6d00737ead353dba613d2375ffea7a0fd46847ffcb29a6'
  name 'NW.js'
  homepage 'https://nwjs.io/'

  app "nwjs-sdk-v#{version}-osx-x64/nwjs.app"
  binary "nwjs-sdk-v#{version}-osx-x64/nwjc"
end
