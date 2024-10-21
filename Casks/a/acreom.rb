cask "acreom" do
  arch arm: "-arm64"

  version "1.20.3"
  sha256 arm:   "8af9c30e8a85dbd6b9d7bc5601e443541749363f522033397b8a89d40f05c8c7",
         intel: "2c6df1aff353804f1479985825d9873dfa207e052bad17ece4e0ce15867234d4"

  url "https://github.com/Acreom/app/releases/download/v#{version}/acreom-#{version}#{arch}.dmg",
      verified: "github.com/Acreom/app/"
  name "acreom"
  desc "Personal knowledge base for developers"
  homepage "https://acreom.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "acreom.app"

  zap trash: [
    "~/Library/Application Support/acreom",
    "~/Library/Logs/acreom",
    "~/Library/Preferences/com.acreom.acreom-desktop.plist",
    "~/Library/Saved Application State/com.acreom.acreom-desktop.savedState",
  ]
end
