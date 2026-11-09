cask "solidcraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.30.1"
  sha256 arm:          "dcf56b80aaca6195b5854f9003f5648580d1935dc7740060e2b6b885be200a2d",
         intel:        "dcf56b80aaca6195b5854f9003f5648580d1935dc7740060e2b6b885be200a2d",
         arm64_linux:  "7ec2387a2710516ca84625cb0066359fd0693849906147bca7cc8b3101b78553",
         x86_64_linux: "1ce0d61afd38200f0c1627931a0485f03b83e0a88b1c74c75e1a1501e938835d"

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
