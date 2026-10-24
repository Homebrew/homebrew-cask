cask "motrix" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.0"
  sha256 arm:          "cdf86d35886f41ed8b95c84f033e8fbff23b441cccaa07dc402eb8837e343874",
         intel:        "560b04adf535c9b8461f5504a1a7571c9634c9f9ea995b00d40097f383cf852d",
         arm64_linux:  "bd6ddea8a2c675823d860ac9604b12a9d4ac62539fb65f4d7666d5585fbc44e6",
         x86_64_linux: "56c13d1d10533634269735677c79c5df599d01a9acaf9ac539498afebe869a8c"

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
