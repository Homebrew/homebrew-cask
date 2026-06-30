cask "tagspaces" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "6.13.9"
  sha256 arm:          "91d247d1b64465138c37e7fd8cc8a0462b18b492e7735566212d05582f7ae860",
         intel:        "0ae871c87326863d4ea81f7c43519d829f15c8a13744b8f2da04a50c7b44e9a4",
         arm64_linux:  "5db7e5461639317faa17d2221ca6f2f70dec101fd056674cdf9e0c22d38cee7c",
         x86_64_linux: "85d555fe000a885a7be82131bda19b7d00ed4cec5114fdb546872498ffa7f34f"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"
  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    depends_on macos: :monterey

    app "TagSpaces.app"

    zap trash: [
      "~/Library/Application Support/TagSpaces",
      "~/Library/Preferences/org.tagspaces.desktopapp.plist",
      "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
    ]
  end

  on_linux do
    app_image "tagspaces-linux-#{arch}-#{version}.AppImage", target: "TagSpaces.AppImage"
  end
end
