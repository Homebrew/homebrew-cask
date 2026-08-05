cask "emdash" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: "#{arch}.dmg", linux: "x86_64.AppImage"

  version "1.1.40"

  on_macos do
    sha256 arm:   "b78f007a9799f64fb9d19dd9ca8669317dafea564f2d072189318f048f5e4ad7",
           intel: "8190d833caaabab5d396bdfad0416213d798a5d5a9dd9f09ca3307e81ded62dc"

    depends_on macos: :monterey

    app "Emdash.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
      "~/Library/Application Support/Emdash",
      "~/Library/Logs/emdash",
      "~/Library/Preferences/com.emdash.plist",
      "~/Library/Saved Application State/com.emdash.savedState",
    ]
  end
  on_linux do
    sha256 "f104f4cddcb240ecbaf44cf942711e3e11b54af207eac7d78979fe36ae0de763"

    depends_on arch: :x86_64

    app_image "emdash-x86_64.AppImage", target: "Emdash.AppImage"
  end

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{url_end}",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
