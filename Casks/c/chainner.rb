cask "chainner" do
  version "0.21.1"
  sha256 "a869acc88550595e6e7672b9ae9858ac021bb9624e149801f65f1f97915b158e"

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
