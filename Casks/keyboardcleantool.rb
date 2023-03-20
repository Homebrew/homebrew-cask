cask "keyboardcleantool" do
  version "4"
  sha256 :no_check

  url "https://folivora.ai/releases/KeyboardCleanTool.zip"
  name "KeyboardCleanTool"
  desc "Blocks all Keyboard and TouchBar input"
  homepage "https://folivora.ai/keyboardcleantool"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "KeyboardCleanTool.app"
end
