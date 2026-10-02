cask "folo" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.15.0"
  sha256 arm:          "971a75f2e6a71a5f1cebabbe425a5f94c7b5a62b02029359f954c18726cf390d",
         intel:        "7f4e71e8f767732cf62ca0ab2d01b1f02d6918a52560e1f1689e641c62ff9c58",
         x86_64_linux: "58ecc7b8bc2df47dbaae5fb4d2a03029d19dacf9f364b2d8d8f38e42ab5a0d31"

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
