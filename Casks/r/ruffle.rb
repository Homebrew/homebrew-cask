cask "ruffle" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"

  version "0.7.0"
  sha256 arm:          "07f957c29c0be6874d10c7e12b493bbe41ecbfc9623b00af84a064fa9205e616",
         intel:        "07f957c29c0be6874d10c7e12b493bbe41ecbfc9623b00af84a064fa9205e616",
         arm64_linux:  "791fae5b30bbeb301e50afee09a2d29bfd71c95c591001ca9e5c1f2e905b6524",
         x86_64_linux: "f302930fa184661b550b2c09e08b0cc765497e789e29844863c75c74df0dacf7"

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
