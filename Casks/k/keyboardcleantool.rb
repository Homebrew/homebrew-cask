cask "keyboardcleantool" do
  version "8.1"
  sha256 "1c5f6b20021235031323c2d7398fdc3a5e47f27e9671e8a81714ac408912a8e0"

  url "https://folivora.ai/releases/KeyboardCleanTool-#{version}.zip"
  name "KeyboardCleanTool"
  desc "Blocks all Keyboard and TouchBar input"
  homepage "https://folivora.ai/keyboardcleantool"

  livecheck do
    url "https://updates.folivora.ai/keyboardcleantool.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :ventura

  app "KeyboardCleanTool.app"

  # No zap stanza required
end
