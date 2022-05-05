cask "jetbrains-toolbox" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.23,1.23.11849"

  if Hardware::CPU.intel?
    sha256 "f3bf037b2b2d8cb6a9ac5ebe98fda4922e9a1bff9227e84e96eb754cb24119c9"
  else
    sha256 "3824fbd8f90110fa012abd5d29f1a430cb9952733e687182caa61cebf740048b"
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
