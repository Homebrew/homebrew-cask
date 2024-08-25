cask "sonarr@beta" do
  version "3.0.9.1555"
  sha256 "50ede276cd42c41b9a3f66ca2495b16b0f99b4b773615ab602f069acf10c5a04"

  url "https://download.sonarr.tv/v#{version.major}/develop/#{version}/Sonarr.develop.#{version}.macos.zip"
  name "Sonarr Beta"
  desc "PVR for Usenet and BitTorrent users"
  homepage "https://sonarr.tv/"

  livecheck do
    url "https://download.sonarr.tv/v3/develop/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  deprecate! date: "2025-05-01", because: :unsigned

  conflicts_with cask: "sonarr"
  depends_on cask: "mono-mdk"

  app "Sonarr.app"

  zap trash: [
    "~/.config/Sonarr",
    "~/Library/Saved Application State/com.osx.sonarr.tv.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
