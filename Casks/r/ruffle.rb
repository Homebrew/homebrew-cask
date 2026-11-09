cask "ruffle" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"

  version "0.7.1"
  sha256 arm:          "7a86a09b0ca1d5756abcbb093108265019d77edad79e91c98689126c940bea4e",
         intel:        "7a86a09b0ca1d5756abcbb093108265019d77edad79e91c98689126c940bea4e",
         arm64_linux:  "36b222a53062709772c8dcd454fdd1dafa67ab743497e38a0a5d2ed8c0a6597f",
         x86_64_linux: "67950dfdde643f9087ae478eb3637fe52e0deefc79bdb55fe43cd69dab9fdd99"

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
