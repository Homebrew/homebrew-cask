cask "positron" do
  arch arm: "arm64", intel: "x64"

  version "2026.02.0-139"
  sha256 arm:   "0ed6f3743ef20c0c751c4f22b22491af8be97bf33bec19d2f006cea566a76be1",
         intel: "a38370e9e28d4b77f2c6231e249aefb31aa28bd4c4539bbf79b1a1262ea6e039"

  url "https://cdn.posit.co/positron/releases/mac/#{arch}/Positron-darwin-#{version}-#{arch}.zip"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/releases/mac/#{arch}/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
