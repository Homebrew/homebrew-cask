cask "bergen" do
  version "0.1.17"
  sha256 "13647bc16971ce8decc9181b5d05e97660ef9f9f43bff7688202aa701b93ef97"

  url "https://github.com/kkarimi/bergen/releases/download/v#{version}/bergen-macos-v0.1.17.zip"
  name "Bergen"
  desc "Lightweight markdown reader"
  homepage "https://github.com/kkarimi/bergen"
  
  depends_on macos: ">= :big_sur"
  
  app "bergen.app"

  zap trash: [
    "~/Library/Application Support/bergen",
    "~/Library/Caches/bergen",
    "~/Library/Preferences/com.zendo.bergen.plist",
    "~/Library/Saved Application State/com.zendo.bergen.savedState",
  ]
end
