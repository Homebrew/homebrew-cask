cask "bruno" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "3.5.3"
  sha256 arm:          "89627c0fa17a53a10cdf5b3d1f7884b84cfbf2fab21aebde7a44ebcf38c859ce",
         intel:        "76c45473c4aa0e53281181494dcc6ae759db0a40bfaa0841202f5e03d49f9f11",
         arm64_linux:  "44210442522d2c2e204e650b2b9b7564de48bfa587143e4ee04caa9b00ba09a5",
         x86_64_linux: "ffcebdd4e86eab98274d76e9af39a964dbcd925b06c0a83a2a81a45860ef0629"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/usebruno/bruno/releases/download/v#{version}/bruno_#{version}_#{arch}_#{os}#{url_end}",
      verified: "github.com/usebruno/bruno/"
  name "Bruno"
  desc "Open source IDE for exploring and testing APIs"
  homepage "https://www.usebruno.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "Bruno.app"

    zap trash: [
      "~/Library/Application Support/bruno",
      "~/Library/Preferences/com.usebruno.app.plist",
      "~/Library/Saved Application State/com.usebruno.app.savedState",
    ]
  end

  on_linux do
    app_image "bruno_#{version}_#{arch}_linux.AppImage"
  end
end
