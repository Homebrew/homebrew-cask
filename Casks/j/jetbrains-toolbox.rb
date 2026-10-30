cask "jetbrains-toolbox" do
  arch arm: "-arm64"
  os macos: "dmg", linux: "tar.gz"

  version "3.9.1,3.9.1.89198"
  sha256 arm:          "bd4ed78166bb9baab9d211b00a49fc865c187a7ef02b282007f04d889a63fa6d",
         intel:        "ed6c542a6dde523f87884e1fdf336575133893b0cc22063ee90a1314aeca4720",
         arm64_linux:  "090c11b7c44053bda95adbb4b9d4d09fde09fe91145ebca681290b2c156a9cab",
         x86_64_linux: "43add3c33c9b86ee560adc8579261e8e26465a101b281720937c6d1d4967b3e4"

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
