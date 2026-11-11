cask "keyboardcleantool" do
  version "9.0"
  sha256 "c56cd9fb628f115c810bd8ce96e3917f660fd86587305a91728b1344817546cc"

  url "https://folivora.ai/releases/KeyboardCleanTool#{version.major}.zip"
  name "KeyboardCleanTool"
  desc "Blocks all Keyboard and TouchBar input"
  homepage "https://folivora.ai/keyboardcleantool"

  livecheck do
    url "https://updates.folivora.ai/keyboardcleantool.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "KeyboardCleanTool.app"

  zap :not_required
end
