cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.4.2"
  sha256 arm:          "2388897f8cbeb1a26ec746d3de7a215c9c21b9d8b95f51a5c8af5827cafdfd88",
         intel:        "baefbce7708269214a2c65fb80a5d9975e8ec3033919a81fb965b98deebcb051",
         arm64_linux:  "6a61f3b5e85af012e0fb15ad327ef59af7d92ea41dd9ab286d0195970da912e7",
         x86_64_linux: "cbd8c06c92f33d2454b7357831d407462899d8aa18448565cbfb90222a9a9cd9"

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
