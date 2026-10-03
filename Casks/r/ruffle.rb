cask "ruffle" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"

  version "0.6.0"
  sha256 arm:          "83d26cae9d0217cbaeef2095b7e7a104e8cd48aa2dfb327dea07d28f46962805",
         intel:        "83d26cae9d0217cbaeef2095b7e7a104e8cd48aa2dfb327dea07d28f46962805",
         arm64_linux:  "9f8c57e8ec5bbc0dc8a0040575ffe28a1e7bbc16b187d611697cee998186ec19",
         x86_64_linux: "983acb2600dedf8ba6ecbeae1d9eb3a10202a5f3e27a5ae049281145dc99127b"

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
