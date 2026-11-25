cask "iloader" do
  arch arm: "aarch64", intel: "amd64"
  os macos: "iloader-darwin-universal.dmg", linux: "iloader-linux-#{arch}.AppImage"

  version "2.4.2"
  sha256 arm:          "e67b92eeaf16493991c1721aec3e2aaedde6670a4fa4a546c111718340bf0680",
         intel:        "e67b92eeaf16493991c1721aec3e2aaedde6670a4fa4a546c111718340bf0680",
         arm64_linux:  "f938bd1fa5292622d4d2e9a417dcd4ed9ed6440abf92d0046393bfd427d1ea13",
         x86_64_linux: "b1ecfbc3b2616a92a570da8902491fb7297233bc62cd430200afc9670bb6d914"

  on_macos do
    auto_updates true

    app "iloader.app"

    zap trash: [
      "~/Library/Application Support/me.nabdev.iloader",
      "~/Library/Caches/me.nabdev.iloader",
      "~/Library/WebKit/me.nabdev.iloader",
    ]
  end
  on_linux do
    app_image "iloader-linux-#{arch}.AppImage", target: "iloader.AppImage"

    zap trash: "~/.local/share/me.nabdev.iloader"
  end

  url "https://github.com/nab138/iloader/releases/download/v#{version}/#{os}"
  name "iloader"
  desc "iOS Sideloading Companion"
  homepage "https://iloader.app/"
end
