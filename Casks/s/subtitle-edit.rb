cask "subtitle-edit" do
  arch arm: "ARM64", intel: "x64"
  os macos: "macOS", linux: "Linux"
  url_end = on_system_conditional macos: "dmg", linux: "tar.gz"

  version "5.2.0"
  sha256 arm:          "40e1dd630d35c97914ef6d828293e6c0ee61097eb6d4b7d2032239d5ad123b2f",
         intel:        "4a4aa038b344cde19ed8c8083eef0967f35f07a97a84c1198a2c3de2a96ceb01",
         arm64_linux:  "2b7e967d53213737027d4a29a8ef35eafce9fa56327cbbc3b91b157f967e01da",
         x86_64_linux: "6e2d46e66522759df32ef10fad3b753e10eacfbb184b6ab7351209514957e54e"

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
