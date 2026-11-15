cask "folo" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.18.0"
  sha256 arm:          "37768b3611f9810e66a0c9e09c79a7b111a8fc0bffc1f4fa3cc7d8bf1f43b48f",
         intel:        "cfab1478d25836d04cc683c24fc957e11c27b8067552a79dab370882394ada17",
         x86_64_linux: "0f5fe4daee99c538e0b9758359e8283312a0e5a510c8f700108299d7f6832e51"

  on_macos do
    depends_on macos: :ventura

    app "Folo.app"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
      "~/Library/Application Support/Folo",
      "~/Library/Logs/Folo",
      "~/Library/Preferences/is.follow.plist",
      "~/Library/Saved Application State/is.follow.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Folo-#{version}-linux-#{arch}.AppImage", target: "Folo.AppImage"

    zap trash: "~/.config/Folo"
  end

  url "https://github.com/RSSNext/Folo/releases/download/desktop%2Fv#{version}/Folo-#{version}-#{os}-#{arch}.#{url_end}"
  name "Folo"
  desc "Information browser"
  homepage "https://folo.is/"

  livecheck do
    url :url
    regex(%r{^(?:desktop[/@])?v?(\d+(?:\.\d+)+)$}i)
  end

  auto_updates true
end
