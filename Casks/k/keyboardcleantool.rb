cask "keyboardcleantool" do
  version "8.3"
  sha256 "13e2a061220626392b253ab41500871ac9bda1b92598d7a3077b483960256c93"

  url "https://folivora.ai/releases/KeyboardCleanTool-#{version}.zip"
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

  # No zap stanza required
end
