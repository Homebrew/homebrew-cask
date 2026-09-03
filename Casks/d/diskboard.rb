cask "diskboard" do
  version "1.0.8"
  sha256 "21fedd4226b6c0be9b69c115c8ceb5c37a4f737eabdb56c5bd796c94e73751e1"

  url "https://www.diskboard.com/downloads/#{version}/DiskBoard.app.zip"
  name "DiskBoard"
  desc "Disk benchmark and S.M.A.R.T. health monitor"
  homepage "https://www.diskboard.com/"

  livecheck do
    url "https://www.diskboard.com/downloads"
    regex(%r{downloads/v?(\d+(?:\.\d+)+)/DiskBoard\.app\.zip}i)
  end

  depends_on macos: :big_sur

  app "DiskBoard.app"

  # The app keeps everything inside its bundle; these two are created by macOS itself.
  zap trash: [
    "~/Library/Preferences/com.futonica.diskboard.plist",
    "~/Library/Saved Application State/com.futonica.diskboard.savedState",
  ]
end
