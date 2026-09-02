cask "bazecor" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.10.0"

  on_macos do
    sha256 arm:   "021ec9e364d63c4fb3d900f123c4b552cd20b356d8471a56897d5c808e15aa48",
           intel: "0830aa2b37abf8fb33669eaa26dac5f12d3ad8fc3a82e733252de9ca34801687"

    depends_on macos: :big_sur

    app "Bazecor.app"

    zap trash: [
      "~/Library/Application Support/BAZECOR",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.dygmalab.bazecor.sfl*",
      "~/Library/Logs/Bazecor",
      "~/Library/Preferences/com.dygmalab.bazecor.plist",
      "~/Library/Saved Application State/com.dygmalab.bazecor.savedState",
    ]
  end
  on_linux do
    sha256 "b5d92e67b6087477ad74b8b911493d1ccbd6d265b43aab1bdbcc6c7a2b1eb364"

    depends_on arch: :x86_64

    app_image "Bazecor-#{version}-#{arch}.AppImage", target: "Bazecor.AppImage"
  end

  url "https://github.com/Dygmalab/Bazecor/releases/download/v#{version}/Bazecor-#{version}-#{arch}.#{url_end}"
  name "Bazecor"
  desc "Graphical configurator for Dygma Raise keyboards"
  homepage "https://github.com/Dygmalab/Bazecor"

  livecheck do
    url :url
    strategy :github_latest
  end
end
