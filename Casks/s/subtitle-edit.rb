cask "subtitle-edit" do
  arch arm: "ARM64", intel: "x64"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "5.4.0"
  sha256 arm:          "23ff6eb5afd79c4448cced84979b3c428bbab6f2de0de9c01a5f3370f91042e6",
         intel:        "881503bd1ae93ed04fee3fb93439a200373f4463a17c02b1de4f2c224610a56e",
         arm64_linux:  "ae5ee9f68a0b897f7e5debbd602af1e0be6582e1e59b284177a8b23585c909b0",
         x86_64_linux: "e41ed6cc8b3d8b2ca69fdc6d573320900f0555a1ea5d2767d6ecc47353967548"

  on_macos do
    depends_on macos: :monterey

    app "Subtitle Edit.app"

    zap trash: [
      "/Library/Logs/DiagnosticReports/SubtitleEdit_*.diag",
      "~/Library/Application Support/Subtitle Edit",
      "~/Library/Preferences/dk.nikse.subtitleedit.plist",
    ]
  end
  on_linux do
    binary "SubtitleEdit", target: "subtitleedit"

    zap trash: "~/.config/Subtitle Edit"
  end

  url "https://github.com/SubtitleEdit/subtitleedit/releases/download/v#{version}/SubtitleEdit-#{os}-#{arch}.#{url_end}"
  name "Subtitle Edit"
  desc "Subtitle editor"
  homepage "https://www.nikse.dk/subtitleedit"

  livecheck do
    url :url
    strategy :github_latest
  end
end
