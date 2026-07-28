cask "altersend" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "dmg", linux: "AppImage"

  version "1.7.0"
  sha256 arm:          "0df4ea9407b71a7efe11f1b12e38f3f9034b21ecdb881d33f4e8f22d02642df4",
         intel:        "8235ae3ebd25832292faed53ee3da4cef25198f5097e2b6817c01598ad348ec4",
         arm64_linux:  "526d17c8fd58fac6dbb7da12524ca544aba5419ec1b3b5f73fcc0b2342c0aa26",
         x86_64_linux: "52d7245103f8a8f2e05ed6b62a39d19303c68bf45d6aadb07bc7abb2b77c23e4"

  on_macos do
    url "https://github.com/denislupookov/altersend/releases/download/v#{version}/AlterSend-#{version}-#{arch}.#{os}"

    depends_on macos: :monterey

    app "AlterSend.app"

    zap trash: [
      "~/Library/Application Support/AlterSend",
      "~/Library/Preferences/com.altersend.desktop.plist",
    ]
  end
  on_linux do
    url "https://github.com/denislupookov/altersend/releases/download/v#{version}/AlterSend-#{arch}.#{os}"

    app_image "AlterSend-#{arch}.AppImage", target: "AlterSend.AppImage"
  end

  name "AlterSend"
  desc "Secure, peer-to-peer file transfer app"
  homepage "https://altersend.com/"
end
