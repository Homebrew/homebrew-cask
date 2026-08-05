cask "chiri" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.2"
  sha256 arm:          "9bec2092c46ce05bb2b1cf89d640e8fe26c8c73b7a57cb1e23820b0dfc1e8697",
         intel:        "4e23be09ba19c44d1e69f820d7e947fa0b29b534b36a2a1d2bebcf31f06a9bd4",
         arm64_linux:  "8b70b5b085e8050c8cea338d0f3b1b2c84c7981da79a86a19a53883a21dcb87c",
         x86_64_linux: "54186ce8a1393a94d72d13f8f404e42b610a625d66a13c8a974a7b75cfd110ef"

  on_macos do
    app "Chiri.app"

    zap trash: [
      "~/Library/Application Support/garden.chiri.Chiri",
      "~/Library/Caches/garden.chiri.Chiri",
      "~/Library/Logs/garden.chiri.Chiri",
      "~/Library/Preferences/garden.chiri.Chiri.plist",
      "~/Library/WebKit/garden.chiri.Chiri",
    ]
  end
  on_linux do
    app_image "Chiri_#{version}_#{arch}.AppImage", target: "Chiri.AppImage"
  end

  url "https://github.com/chiriapp/chiri/releases/download/app-v#{version}/Chiri_#{version}_#{arch}.#{url_end}"
  name "Chiri"
  desc "CalDAV-compatible task management app"
  homepage "https://github.com/chiriapp/chiri"

  livecheck do
    url :url
    strategy :github_latest
  end
end
