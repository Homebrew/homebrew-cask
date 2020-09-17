cask "keyboardcleantool" do
  version :latest
  sha256 :no_check

  url "https://folivora.ai/releases/KeyboardCleanTool.zip"
  name "KeyboardCleanTool"
  desc "Blocks all Keyboard and TouchBar input"
  homepage "https://folivora.ai/keyboardcleantool"

  app "KeyboardCleanTool.app"
end
