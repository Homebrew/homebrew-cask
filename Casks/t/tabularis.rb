cask "tabularis" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  os macos: "dmg", linux: "AppImage"

  version "0.25.0"
  sha256 arm:          "586463e010e9f4acdba6bfb2da75803342ef8247e04e2efb75864690476b82b7",
         intel:        "04196a0e2c1da8cc039eede4906e6911e928703ca99615e2e01d7ed846c36343",
         x86_64_linux: "b85f75101bc5728a99b91eb99fb7ffab8c06e7e9686ad6b664b2493982518080"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "tabularis.app"

    zap trash: [
      "~/Library/Application Support/tabularis",
      "~/Library/Caches/tabularis",
      "~/Library/Logs/tabularis",
      "~/Library/Preferences/com.debba.tabularis.plist",
      "~/Library/Saved Application State/com.debba.tabularis.savedState",
      "~/Library/WebKit/tabularis",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "tabularis_#{version}_amd64.AppImage", target: "tabularis.AppImage"
  end

  url "https://github.com/TabularisDB/tabularis/releases/download/v#{version}/tabularis_#{version}_#{arch}.#{os}"
  name "Tabularis"
  desc "Lightweight database management tool"
  homepage "https://tabularis.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
