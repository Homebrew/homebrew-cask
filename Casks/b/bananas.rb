cask "bananas" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.2.0"

  on_macos do
    sha256 "8bcc609da42b847a578bd10749f6237620c5fa30f3abaa1a965b3aa6db73ae9a"

    app "bananas.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "5a55f754d1303677a41353ae35ac2626d5a64a90d162ff255f2bce16c0d5be67",
           x86_64_linux: "07a7064cd334bff0a55bd5ef85a8f941941de871609cc7e1fb7d67b9d81b0913"

    app_image "bananas_#{arch}.AppImage", target: "Bananas.AppImage"
  end

  url "https://github.com/mistweaverco/bananas/releases/download/v#{version}/bananas_#{url_end}",
      verified: "github.com/mistweaverco/bananas/"
  name "Bananas Screen Sharing"
  desc "Cross-platform screen sharing tool"
  homepage "https://getbananas.net/"
end
