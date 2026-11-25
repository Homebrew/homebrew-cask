cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.5"
  sha256 arm:          "f540732f65f94a74d4c98544fd0a15e6b6a13c5049ec314409876f05869e0fc6",
         intel:        "5bb8dcf265184bb647d05dbccce022f34412b5af29fea1ffb233205298a598eb",
         arm64_linux:  "2f34f92fd23f7aa2d31ae21bf5a6906346e50d3ddfd839f0e1ea8d407dbd9a52",
         x86_64_linux: "3ac1b2b32885c570aed070b90d63c3206d9ac6a3a7387dbbb3c7cc45caf8602c"

  on_macos do
    depends_on macos: :ventura

    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/app.motrix.native.sfl*",
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}-#{arch}.AppImage", target: "Motrix.AppImage"

    zap trash: "~/.config/Motrix"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}-#{arch}.#{os}"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "motrix@beta"
end
