cask "firebird-emu" do
  version "1.6"
  sha256 "c68aae5b077bd447845f476316fed93cf261ac7221fac0a38dfc0a575a3392d2"

  url "https://github.com/nspire-emus/firebird/releases/download/v#{version}/firebird-emu_macOS.zip"
  name "firebird"
  desc "TI Nspire calculator emulator"
  homepage "https://github.com/nspire-emus/firebird"

  depends_on macos: ">= :high_sierra"

  app "firebird-emu.app"

  zap trash: "~/Library/Preferences/org.firebird-emus.firebird-emu.plist"

  caveats do
    requires_rosetta
  end
end
