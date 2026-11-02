cask "audacity" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "macOS", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "4.0.2"
  sha256 arm:          "fd462da6204cbf9758b44c7ce1c29d5fe5cab4f31ba308d33c125f1b170401c3",
         intel:        "4bf24e9f68e4af31dc47a6b1d02a44a74b537bdb88298d3bc14be55fb1fe6e58",
         arm64_linux:  "88b1e16dd40a5b7d36bec5789b03f66bda34a7b964e19f338951bf6034d9db9c",
         x86_64_linux: "a5f8787aa13cdb500a60fc013403b986776876b960cca962bc6e7fff066172f3"

  on_macos do
    depends_on macos: :ventura

    app "Audacity #{version.major}.app"

    uninstall quit: "org.audacityteam.audacity#{version.major}"

    zap quit:  "org.audacityteam.audacity#{version.major}",
        trash: [
          "~/Library/Application Support/audacity",
          "~/Library/Caches/Audacity",
          "~/Library/Preferences/org.audacityteam.Audacity#{version.major}.plist",
          "~/Library/Preferences/org.audacityteam.audacity.plist",
          "~/Library/Saved Application State/org.audacityteam.audacity.savedState",
        ],
        rmdir: "~/Documents/Audacity#{version.major}"
  end
  on_linux do
    app_image "audacity-linux-#{version}-#{arch}.AppImage", target: "Audacity.AppImage"

    zap trash: [
          "~/.cache/Audacity",
          "~/.config/Audacity",
          "~/.config/audacity#{version.major}",
          "~/.local/share/Audacity",
          "~/.local/share/audacity#{version.major}",
        ],
        rmdir: "~/Documents/Audacity#{version.major}"
  end

  url "https://github.com/audacity/audacity/releases/download/Audacity-#{version}/audacity-#{os}-#{version}-#{arch}.#{url_end}"
  name "Audacity"
  desc "Multi-track audio editor and recorder"
  homepage "https://www.audacityteam.org/"

  livecheck do
    url :url
    regex(/^Audacity[._-]v?(\d+(?:\.\d+)+)$/i)
  end
end
