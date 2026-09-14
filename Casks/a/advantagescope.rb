cask "advantagescope" do
  arch arm: "arm64", intel: "x64"
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "26.0.2"
  sha256 arm:          "01022c3e0f4df3ceb8831d23f9c5d9b36ee27d84a23e57ed1118d4125ea35434",
         intel:        "959aea32909509477d079741456a9aad50ea547710dc3a4d16aa8a1a02a21612",
         arm64_linux:  "317236de75bd9cf384c6862b729b6e3fc666058ce2bf89d24c38504c47cd359f",
         x86_64_linux: "d5ec30f285f9a241fca97d384887070d36c8a70bd8ee17fdb92c933663ee3396"

  on_macos do
    depends_on macos: :monterey

    app "AdvantageScope.app"

    zap trash: [
      "~/Library/Application Support/AdvantageScope",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.littletonrobotics.advantagescope.sfl*",
      "~/Library/Preferences/org.littletonrobotics.advantagescope.plist",
    ]
  end
  on_linux do
    app_image "advantagescope-linux-#{arch}-v#{version}.AppImage", target: "AdvantageScope.AppImage"
  end

  url "https://github.com/Mechanical-Advantage/AdvantageScope/releases/download/v#{version}/advantagescope-#{os}-#{arch}-v#{version}.#{url_end}"
  name "AdvantageScope"
  desc "FRC log analysis tool"
  homepage "https://docs.advantagescope.org/"
end
