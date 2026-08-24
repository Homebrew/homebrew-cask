cask "keyboardcleantool" do
  version "8.2"
  sha256 "c85b7342bce59cc3f76a3689aa92405f1b672f93f697c0775a178a8b255b6191"

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
