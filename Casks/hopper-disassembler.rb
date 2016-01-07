cask 'hopper-disassembler' do
  version '3.11.5'
  sha256 'bd42626b51d4d8d26d22a1dca159a052722d89b99859388a0accfeaa32edffce'

  url "http://www.hopperapp.com/HopperWeb/downloads/Hopper-#{version}.zip"
  appcast "http://www.hopperapp.com/HopperWeb/appcast_v#{version.major}.php",
          :sha256 => '1ae3256f85304ac725327968ca30f04a3c77f0f508c6dc5ac93fba145b6984a5'
  name 'Hopper'
  name 'Hopper Disassembler'
  homepage 'http://www.hopperapp.com/'
  license :commercial

  depends_on :macos => '>= :lion'

  app "Hopper Disassembler v#{version.major}.app"
  binary "Hopper Disassembler v#{version.major}.app/Contents/MacOS/hopper"

  zap :delete => [
                   '~/Library/Application Support/Hopper',
                   "~/Library/Application Support/Hopper Disassembler v#{version.major}",
                   "~/Library/Caches/com.cryptic-apps.hopper-web-#{version.major}",
                   "~/Library/Preferences/com.cryptic-apps.hopper-web-#{version.major}.plist",
                   "~/Library/Saved Application State/com.cryptic-apps.hopper-web-#{version.major}.savedState",
                 ]
end
