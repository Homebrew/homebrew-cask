cask "bugdom2" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "mac.dmg", linux: "linux-#{arch}.AppImage"

  version "4.0.0"

  on_macos do
    sha256 "c962aa3f135d829c2d4409a757480aebac0d1d6dd3fadfcf578503f85445175f"

    app "Bugdom 2.app"
    artifact "Instructions", target: "~/Library/Application Support/Bugdom2"

    zap trash: [
      "~/Library/Preferences/Bugdom2",
      "~/Library/Saved Application State/io.jor.bugdom2.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "006e71b61d6b8ac3bc2bbac0e915144b4cec542c4678b1fd2827569fb939e03d",
           x86_64_linux: "378e097d57dff448300a6063096aad64b0a69096534b981d81640335983ec38a"

    app_image "Bugdom2-#{version}-linux-#{arch}.AppImage", target: "Bugdom 2.AppImage"
  end

  url "https://github.com/jorio/Bugdom2/releases/download/v#{version}/Bugdom2-#{version}-#{url_end}"
  name "Bugdom 2"
  desc "Bug-themed 3D action/adventure game sequel from Pangea Software"
  homepage "https://jorio.itch.io/bugdom2"
end
