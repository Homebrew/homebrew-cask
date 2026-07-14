cask "openwork" do
  os macos: "mac", linux: "linux"

  on_macos do
    arch arm: "arm64", intel: "x64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "0.17.26"
  sha256 arm:          "dd3e8c470857d8b73bd1a8a226b1e6fef5e693fbbdfca55dc9a3cbf994268667",
         intel:        "db5c09686447b440f4fcf7955882a318cfb002d31ea6337bf0c3579ff89cab71",
         arm64_linux:  "83229cc6ad7b6deb8573d2163bf85d26c3bb322a8e86203d5a87697a386507b2",
         x86_64_linux: "4356c604ba4100f12ccf110f6d3572e60782050a0f4d5c46d160cb32c1a041ae"

  url_end = on_system_conditional linux: ".AppImage", macos: ".dmg"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-#{os}-#{arch}-#{version}#{url_end}",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  on_macos do
    auto_updates true
    depends_on macos: :big_sur

    app "OpenWork.app"

    zap trash: [
      "~/Library/Application Support/OpenWork",
      "~/Library/Caches/OpenWork",
      "~/Library/Preferences/com.differentai.openwork.plist",
    ]
  end

  on_linux do
    app_image "openwork-linux-#{arch}-#{version}.AppImage", target: "OpenWork.AppImage"
  end
end
