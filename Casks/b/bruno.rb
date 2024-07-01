cask "bruno" do
  arch arm: "arm64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "a47f3b24fdb86787c3ed96ec7b4f7cfd32dc6e4ee2e6e3b0a8b324b350162d3f",
         intel: "3f393389031713ac2c56df12049b9865b44f7aca653bfd4b1e8b728968d9bff9"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_mac.dmg",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Opensource IDE for exploring and testing api's"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "Bruno.app"

  zap trash: [
    "~/Library/Application Support/bruno",
    "~/Library/Preferences/com.usebruno.app.plist",
    "~/Library/Saved Application State/com.usebruno.app.savedState",
  ]
end
