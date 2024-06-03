cask "chainner" do
  version "0.24.0"
  sha256 "209f180541be2d7db3c0828ca775293dc7fb7cb076b01ce368974e92913c8b82"

  url "https://github.com/chaiNNer-org/chaiNNer/releases/download/v#{version}/chaiNNer-#{version}-universal-macos.dmg",
      verified: "github.com/chaiNNer-org/chaiNNer/"
  name "chaiNNer"
  desc "Flowchart-based image processing GUI"
  homepage "https://chainner.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "chaiNNer.app"

  zap trash: [
    "~/Library/Application Support/chaiNNer",
    "~/Library/Caches/chainner_pip",
    "~/Library/Logs/chaiNNer",
    "~/Library/Preferences/com.electron.chainner.plist",
    "~/Library/Saved Application State/com.electron.chainner.savedState",
  ]
end
