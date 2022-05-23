cask "jetbrains-toolbox" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.24,1.24.11947"

  if Hardware::CPU.intel?
    sha256 "4dc050e5e08a4d6d2a7c46864b6034cbc43c1e93c522740ec3baa73c26c878c4"
  else
    sha256 "da52d9feea806bc49e2cbaa7746e41e7cd4a94954fa4bf2e1cbdc21767dfc987"
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
