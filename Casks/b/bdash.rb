cask "bdash" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "1.35.4"
  sha256 arm:          "45db49d7029c8919ff150335823a60a2dca84699904029a5c6071a564109c614",
         intel:        "45db49d7029c8919ff150335823a60a2dca84699904029a5c6071a564109c614",
         x86_64_linux: "efb6f80bea765707d002e7bc1f97037cf3bb9f745b5645e06f81694157a51499"

  on_macos do
    depends_on macos: :monterey

    app "Bdash.app"

    zap trash: [
      "~/.bdash",
      "~/Library/Application Support/Bdash",
      "~/Library/Logs/Bdash",
      "~/Library/Preferences/io.bdash.plist",
      "~/Library/Saved Application State/io.bdash.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Bdash-#{version}.AppImage", target: "Bdash.AppImage"
  end

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}#{os}"
  name "Bdash"
  desc "Simple SQL Client for lightweight data analysis"
  homepage "https://github.com/bdash-app/bdash"

  livecheck do
    url :url
    strategy :github_latest
  end
end
