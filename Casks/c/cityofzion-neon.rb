cask "cityofzion-neon" do
  arch arm: "arm64", intel: "x64"
  url_end = on_system_conditional macos: ".#{arch}.dmg", linux: ".AppImage"

  version "2.25.1"

  on_macos do
    sha256 arm:   "6b4b6008d2984484e2848d352616ef3263529ca5d0f0738ebf04300e6e6beb02",
           intel: "224141c65c163a6c8aa721a9e03064a7dbaeb63aa199e08d1c4230b53ac5f117"

    app "Neon.app"

    zap trash: [
      "~/Library/Application Support/Neon",
      "~/Library/Preferences/com.electron.neon.helper.plist",
      "~/Library/Preferences/com.electron.neon.plist",
      "~/Library/Saved Application State/com.electron.neon.savedState",
    ]
  end
  on_linux do
    sha256 "154668ad628996296ac24dadce210cad87df21431401170c4e0b093f5d5be5a3"

    depends_on arch: :x86_64

    app_image "Neon.#{version}.AppImage", target: "Neon.AppImage"
  end

  url "https://github.com/CityOfZion/neon-wallet/releases/download/v#{version}/Neon.#{version}#{url_end}"
  name "Neon Wallet"
  desc "Light wallet for the NEO blockchain"
  homepage "https://github.com/CityOfZion/neon-wallet"

  livecheck do
    url :url
    strategy :github_latest
  end
end
