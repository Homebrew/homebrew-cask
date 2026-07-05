cask "altersend" do
  on_macos do
    arch arm: "-arm64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "1.5.0"
  sha256 arm:          "868d6ae51cae5ac8afc59f22a1a43e53d79f582baa9c5ec6c3f6201e95fc7ce2",
         intel:        "88ff6fb60eaf8cc363ab528fedab76b0e98bc92bf950e29a9490c0e34e58061d",
         arm64_linux:  "879b3365532d14b6535aa4184633490a3163e4b3f48ac6029239f26fb433d5c7",
         x86_64_linux: "5d05a8dfd43c442a960af56fa43998cc4610831c21a5e247f3a3d17aa9aa5ce5"

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
