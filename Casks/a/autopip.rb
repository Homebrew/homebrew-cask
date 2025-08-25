cask "autopip" do
  version "1.0"
  sha256 "7fefc8e052643fe5b7dfdaf3ef4c774d7681a495ac2922d726d2f16fc830eb86"

  url "https://github.com/vordenken/AutoPiP/releases/download/v#{version}/AutoPiP.dmg"
  name "AutoPiP"
  desc "Picture-in-Picture mode when switching tab in Safari"
  homepage "https://github.com/vordenken/AutoPiP/"

  depends_on macos: ">= :ventura"

  app "AutoPiP.app"

  zap trash: [
    "~/Library/Application Scripts/com.vd.AutoPiP",
    "~/Library/Application Scripts/com.vd.AutoPiP.Extension",
    "~/Library/Containers/com.vd.AutoPiP",
    "~/Library/Containers/com.vd.AutoPiP.Extension",
  ]
end
