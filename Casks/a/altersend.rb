cask "altersend" do
  os macos: "dmg", linux: "AppImage"

  version "2.0.0"
  sha256 arm:          "cbca1e14c05bca7d5d9d4af45f1762b5e78d0e8b8a286afd92b6e4796d537c41",
         intel:        "242760156569be4a933d31d7d4bf500f8a2a5b6960d65b277e603f9715e6fbdb",
         arm64_linux:  "a45c0eeaa3768da6f0df3544fcc72e0da0e9739229b76df0a9b2c3ff59d9b68b",
         x86_64_linux: "74cb05a1cac649767c09537aa457467914c0a47a6fc214915b78c0e91a7a3dda"

  on_macos do
    arch arm: "-arm64"

    url "https://github.com/denislupookov/altersend/releases/download/v#{version}/AlterSend-#{version}#{arch}.#{os}"

    depends_on macos: :monterey

    app "AlterSend.app"

    zap trash: [
      "~/Library/Application Support/AlterSend",
      "~/Library/Preferences/com.altersend.desktop.plist",
    ]
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"

    url "https://github.com/denislupookov/altersend/releases/download/v#{version}/AlterSend-#{arch}.#{os}"

    app_image "AlterSend-#{arch}.AppImage", target: "AlterSend.AppImage"
  end

  name "AlterSend"
  desc "Secure, peer-to-peer file transfer app"
  homepage "https://altersend.com/"
end
