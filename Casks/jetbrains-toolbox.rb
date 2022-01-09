cask "jetbrains-toolbox" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.22,1.22.10970"

  if Hardware::CPU.intel?
    sha256 "179b0bc023a05382b0b4541f62ca50991b39e8ce42d05afa3d27823fda8fbc10"
  else
    sha256 "9832d19e3341ff159855f8002da18c3fd1e41ebcf86c6fb94e99272b6fa52e5b"
  end

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.csv.second}#{arch}.dmg"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox-app/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
    strategy :page_match do |page|
      JSON.parse(page)["TBA"].map do |release|
        "#{release["version"]},#{release["build"]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "JetBrains Toolbox.app"

  uninstall signal:    ["TERM", "com.jetbrains.toolbox"],
            launchctl: "com.jetbrains.toolbox"

  zap trash: [
    "~/Library/Application Support/JetBrains/Toolbox",
    "~/Library/Caches/JetBrains/Toolbox",
    "~/Library/Logs/JetBrains/Toolbox",
    "~/Library/Preferences/com.jetbrains.toolbox.renderer.plist",
    "~/Library/Saved Application State/com.jetbrains.toolbox.savedState",
  ],
      rmdir: [
        "~/Library/Application Support/JetBrains",
        "~/Library/Caches/JetBrains",
        "~/Library/Logs/JetBrains",
      ]
end
