cask "jetbrains-toolbox" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.24,1.24.12080"

  if Hardware::CPU.intel?
    sha256 "01571e8720bcba3f22e94fa83837e3208a4528093dbcc325b1e7bab322596039"
  else
    sha256 "bc0564476d767841a85701e2b2a7ee5d28688ee87bb381cc4172612e6938a71a"
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
