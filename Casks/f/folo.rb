cask "folo" do
  arch arm: "arm64", intel: "x64"
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.16.0"
  sha256 arm:          "0b44b8d39115ec6d1c0f88e0f47abb0da5d866a4dc19248c22ac51b4e6922673",
         intel:        "dcb80f402143f065839b80caf91d67eb8ec59039c770f376a79e747735623682",
         x86_64_linux: "604565f9bedcfd64b3682e62dc765ebe07d05a4658503826bf4a2d8295125610"

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
