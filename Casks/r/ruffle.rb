cask "ruffle" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"

  version "0.8.0"
  sha256 arm:          "da1527c22e2869274be8af07b7fe04fb8fb2a13a810dfc311722f8b328039e0c",
         intel:        "da1527c22e2869274be8af07b7fe04fb8fb2a13a810dfc311722f8b328039e0c",
         arm64_linux:  "3ca76fb9f300ba7bde57157597885d4dee6024a9214f5755c6b8c018617371b3",
         x86_64_linux: "3b11e856b7676fd95ec96175e252675b9a0dfdf9fe4de802f5a4196a399bfb79"

  on_macos do
    app "Ruffle.app"
    binary "/Applications/Ruffle.app/Contents/MacOS/ruffle"

    zap trash: [
      "~/Library/Application Scripts/rs.ruffle.ruffle",
      "~/Library/Application Scripts/rs.ruffle.ruffle.extension",
      "~/Library/Application Support/ruffle",
      "~/Library/Caches/ruffle",
      "~/Library/Containers/rs.ruffle.ruffle",
      "~/Library/Containers/rs.ruffle.ruffle.extension",
    ]
  end
  on_linux do
    binary "ruffle"

    zap trash: [
      "~/.cache/ruffle",
      "~/.config/ruffle",
      "~/.local/share/ruffle",
    ]
  end

  url "https://github.com/ruffle-rs/ruffle/releases/download/v#{version}/ruffle-#{version}-#{os}-#{arch}.tar.gz"
  name "ruffle"
  desc "Flash Player emulator"
  homepage "https://ruffle.rs/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end
end
