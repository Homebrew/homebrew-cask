cask "chainner" do
  version "0.20.1"
  sha256 "174ab1b16771de61cbd70da3f0bf6a32e267b235d4aab751520055d9f71edb11"

  url "https://github.com/chaiNNer-org/chaiNNer/releases/download/v#{version}/chaiNNer-#{version}-macos-universal.dmg",
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
