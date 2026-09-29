cask "beekeeper-studio" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "AppImage"

  version "6.1.4"
  sha256 arm:          "a6bcad653711aa261ff5e764605ea470946067580b6617291e3f5a471265ec33",
         intel:        "c93a462831ffcbdeb900f5f349dd7d37d285a177132e770be23b3f6c5694f4d4",
         arm64_linux:  "0db071c2f9f00169d1357e188455ce8f429a07fae238d12fa7259600d635457a",
         x86_64_linux: "2a98cb503f05c2c3877798b196fcd57e28c0f7a838768d845fe49ddb103246fe"

  on_macos do
    auto_updates true
    depends_on macos: :monterey

    app "Beekeeper Studio.app"

    zap trash: [
      "~/Library/Application Support/beekeeper-studio",
      "~/Library/Application Support/Caches/beekeeper-studio-updater",
      "~/Library/Caches/io.beekeeperstudio.desktop",
      "~/Library/Caches/io.beekeeperstudio.desktop.ShipIt",
      "~/Library/Preferences/ByHost/io.beekeeperstudio.desktop.ShipIt.*.plist",
      "~/Library/Preferences/io.beekeeperstudio.desktop.plist",
      "~/Library/Saved Application State/io.beekeeperstudio.desktop.savedState",
    ]
  end
  on_linux do
    app_image "Beekeeper-Studio-#{version}#{arch}.AppImage", target: "Beekeeper Studio.AppImage"
  end

  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}#{arch}.#{os}"
  name "Beekeeper Studio"
  desc "Cross platform SQL editor and database management app"
  homepage "https://www.beekeeperstudio.io/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
