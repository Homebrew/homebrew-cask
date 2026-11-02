cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.30.0"
  sha256 arm:          "b05751f79e503f9c52914ca87f295e2a84760b1b22a695bc94714ddd543ced97",
         intel:        "b05751f79e503f9c52914ca87f295e2a84760b1b22a695bc94714ddd543ced97",
         arm64_linux:  "7a8656bcff860b3518b77fe08ccac10a0e5730a463abaecb690c7a28ce0225e5",
         x86_64_linux: "ab125ba510fe02fe336fb24597c2ca157e40c0db0fac085f72a32cfb530cf559"

  on_macos do
    app "SolidCraft.app"

    zap trash: [
      "~/Library/Application Support/SolidCraft",
      "~/Library/Preferences/ai.storyteller.solidcraft.plist",
    ]
  end
  on_linux do
    app_image "solidcraft-#{version}-linux-#{arch}.AppImage", target: "SolidCraft.AppImage"

    zap trash: "~/.local/share/solidcraft"
  end

  url "https://github.com/tangency-labs/solidcraft/releases/download/v#{version}/solidcraft-#{version}-#{url_end}"
  name "SolidCraft"
  desc "Parametric 3D CAD modeller"
  homepage "https://solidcraft.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
