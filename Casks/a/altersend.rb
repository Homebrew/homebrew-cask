cask "altersend" do
  os macos: "dmg", linux: "AppImage"

  version "1.8.0"
  sha256 arm:          "f7ba7bf25eec22321f8433161c840e9f4a68ed3363433584aae7699b81c3d040",
         intel:        "5d36979b04d95ae3c82f9e317366fab2c0ca009c036337550275e1400ea6777b",
         arm64_linux:  "404106991daf9baac204d15e5343f1ffeed22d5e44bd0151cc84ba35166a209a",
         x86_64_linux: "2b429aedad7bf96aa693d544715bfc582f1c90fde47e8b503aa9b8157d613656"

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
