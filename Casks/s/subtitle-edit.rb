cask "subtitle-edit" do
  arch arm: "ARM64", intel: "x64"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "5.1.0"
  sha256 arm:          "c1b7b9472bc015784e346c210effd6bca2c1fd187110ec928b1e344bccbb155e",
         intel:        "182d8c80276e5ca7a2937cd5e34aa25a987c3a7faf9f714b0a01eab7e947905e",
         arm64_linux:  "6655968696782c5bea9b841185e3f85785e1f028c280a73ba0c865c21afe7b4d",
         x86_64_linux: "455938238969d3aa0a2a500ac061b66161bed1602a96846e01c883322cd5255f"

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
