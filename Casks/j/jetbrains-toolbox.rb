cask "jetbrains-toolbox" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "tar.gz"

  version "3.9,3.9.0.88839"
  sha256 arm:          "af1a2e14be46e1bbca0e310a865029b0694d44c062105b9b847d557f3aa66760",
         intel:        "6824ea74093e5e0db208d3a510725ea520fe225470db53dd5300453820b22ad6",
         arm64_linux:  "dee1bdb310a561d80a87bb52251843fb5f4d577ea8ae2144b817538af53b9690",
         x86_64_linux: "e578d49627da13a6e196e234bfb6325db02a64a07fd22414909daae378ab4049"

  on_macos do
    auto_updates true

    app "JetBrains Toolbox.app"

    uninstall launchctl: "com.jetbrains.toolbox",
              quit:      "com.jetbrains.toolbox",
              signal:    ["TERM", "com.jetbrains.toolbox"]

    zap trash: [
          "~/Library/Application Support/JetBrains/Toolbox",
          "~/Library/Caches/JetBrains/Toolbox",
          "~/Library/Logs/JetBrains/Toolbox",
          "~/Library/Preferences/com.jetbrains.toolbox.plist",
          "~/Library/Preferences/com.jetbrains.toolbox.renderer.plist",
          "~/Library/Saved Application State/com.jetbrains.toolbox.savedState",
        ],
        rmdir: [
          "~/Library/Application Support/JetBrains",
          "~/Library/Caches/JetBrains",
          "~/Library/Logs/JetBrains",
        ]
  end
  on_linux do
    binary "jetbrains-toolbox-#{version.csv.second}#{arch}/bin/jetbrains-toolbox"

    zap trash: [
          "~/.cache/JetBrains/Toolbox",
          "~/.config/autostart/jetbrains-toolbox.desktop",
          "~/.local/share/applications/jetbrains-toolbox.desktop",
          "~/.local/share/icons/hicolor/scalable/apps/jetbrains-toolbox.svg",
          "~/.local/share/JetBrains/Toolbox",
        ],
        rmdir: [
          "~/.cache/JetBrains",
          "~/.local/share/JetBrains",
        ]
  end

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version.csv.second}#{arch}.#{os}"
  name "JetBrains Toolbox"
  desc "JetBrains tools manager"
  homepage "https://www.jetbrains.com/toolbox-app/"

  livecheck do
    url "https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release"
    strategy :json do |json|
      json["TBA"]&.map do |release|
        version = release["version"]
        build = release["build"]
        next if version.blank? || build.blank?

        "#{version},#{build}"
      end
    end
  end
end
