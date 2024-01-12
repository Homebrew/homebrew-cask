cask "chainner" do
  version "0.21.0"
  sha256 "6afd42cc326e672275154789e892ef2494ea216e875496d7e31d70e09cd3b779"

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
