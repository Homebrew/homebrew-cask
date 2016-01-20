cask 'hopper-disassembler' do
  version '3.11.5'
  sha256 'bd42626b51d4d8d26d22a1dca159a052722d89b99859388a0accfeaa32edffce'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast "http://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          checkpoint: '9b8d74f064e2541d0a20c8a371f019f6c792be4d762e262ce072f5d414f17a47'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  depends_on macos: '>= :lion'

  app "Hopper Disassembler v#{version.major}.app"
  binary "Hopper Disassembler v#{version.major}.app/Contents/MacOS/hopper"

  zap delete: [
                '~/Library/Application Support/Hopper',
                "~/Library/Application Support/Hopper Disassembler v#{version.major}",
                "~/Library/Caches/com.cryptic-apps.hopper-web-#{version.major}",
                "~/Library/Preferences/com.cryptic-apps.hopper-web-#{version.major}.plist",
                "~/Library/Saved Application State/com.cryptic-apps.hopper-web-#{version.major}.savedState",
              ]
end
