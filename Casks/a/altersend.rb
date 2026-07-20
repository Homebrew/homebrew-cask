cask "altersend" do
  on_macos do
    arch arm: "-arm64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "1.6.0"
  sha256 arm:          "b2504a07c6acb9d005749f90363fd074714fe6f7189ea7bf5033a931daf8e6d7",
         intel:        "d328f8b1fde0e68f90d61834a1fc8d9e34fcd91687c5de3b7d1a3eb017c6aae9",
         arm64_linux:  "cb4847dfc604bcb2fefce28c90c8b379148573eca59d3cac899a53990efa6098",
         x86_64_linux: "bafe39be8a579942cca97075df556cbff6822d18dd850ec1f1e73dc5c3d8644c"

  artifact = on_system_conditional macos: "AlterSend-#{version}#{arch}.dmg",
                                   linux: "AlterSend-#{arch}.AppImage"

  url "https://github.com/denislupookov/altersend/releases/download/v#{version}/#{artifact}",
      verified: "github.com/denislupookov/altersend/"
  name "AlterSend"
  desc "Secure, peer-to-peer file transfer app"
  homepage "https://altersend.com/"

  on_macos do
    depends_on macos: :monterey

    app "AlterSend.app"

    zap trash: [
      "~/Library/Application Support/AlterSend",
      "~/Library/Preferences/com.altersend.desktop.plist",
    ]
  end

  on_linux do
    app_image artifact, target: "AlterSend.AppImage"
  end
end
