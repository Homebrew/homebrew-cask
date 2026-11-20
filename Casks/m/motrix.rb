cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.4"
  sha256 arm:          "4c1c87c837465f51dcbd3ef9bf0e7f3e65223ce12c0a10aee3a4e60a197ce416",
         intel:        "7665098f9492dd446dcde8961703b33f2c8a36c49612eb3d3d3c094ae6aaf8bb",
         arm64_linux:  "d916b08450679226adad18e689ee8bc454b5dfb4b18fc052bd5769fee07ea04a",
         x86_64_linux: "3f2d822c9414837ec56b34ce652348487eb688b17261232d3effed0c38b0d3ba"

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
