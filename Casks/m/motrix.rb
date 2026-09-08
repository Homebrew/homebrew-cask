cask "motrix" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "1.8.19"
  sha256 arm:          "d73f4d69f3597ad8f98b821aa0fb58ba964bf85061b4a13f00edcb3618001c0e",
         intel:        "b644cc83aa98224147ef2942fd49ecfc8cdcebfce9616550fa35caa6850c4178",
         arm64_linux:  "719362d60d6e7ac1204cab2261338476ee9bb28fcf334d02918fe76ed5848285",
         x86_64_linux: "a123be547ddb65c8e75e3102a9980e9acbe538e35b7e03aae74a952ef1dd29fa"

  on_macos do
    app "Motrix.app"

    zap trash: [
      "~/Library/Application Support/Motrix",
      "~/Library/Caches/app.motrix.native",
      "~/Library/Logs/Motrix",
      "~/Library/Preferences/app.motrix.native.plist",
      "~/Library/Saved Application State/app.motrix.native.savedState",
    ]
  end
  on_linux do
    app_image "Motrix-#{version}#{arch}.AppImage", target: "Motrix.AppImage"

    zap trash: "~/.config/Motrix"
  end

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.#{os}"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "motrix@beta"
end
