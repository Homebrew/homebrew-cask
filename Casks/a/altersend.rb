cask "altersend" do
  on_macos do
    arch arm: "-arm64"
  end
  on_linux do
    arch arm: "arm64", intel: "x86_64"
  end

  version "1.4.0"
  sha256 arm:          "fccd195c37e511f4fdf548fd49b7320a28af62a4908f4e63d051ebf2149dae06",
         intel:        "72994bd75fb3c1ee5e1541c0d606d5673005b954bef541bbe1b7f2479b90164d",
         arm64_linux:  "ba423c5d792cba497b9b09aeae20e8e535ced53f435f49c4ebe3d591e2ba3583",
         x86_64_linux: "9567e882e053e845bfb762239076033c006042a969e0dcaf061b0bf0c8d089cc"

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
