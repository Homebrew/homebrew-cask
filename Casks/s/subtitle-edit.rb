cask "subtitle-edit" do
  arch arm: "ARM64", intel: "x64"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "5.3.0"
  sha256 arm:          "8cf1535b1984f10557076324245f716d6abd858f71c59ef2ca2f474079fc404b",
         intel:        "73e8f484118ccb96739e72935250140a0fa266cca6bb0e5c5c7e0dd37ac09d55",
         arm64_linux:  "7e67a5c98c6a666a62b7e94a679108d7a767ae0d2ec949f1f2412b5b3f9adc6d",
         x86_64_linux: "93b487e115560da33c4557c780d387e311d93a6ab6abe000093576ccb9d44889"

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
