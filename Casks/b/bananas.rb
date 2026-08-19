cask "bananas" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "0.2.1"

  on_macos do
    sha256 "b540be4a27b4bb2ad791794f65628146e2334210490448a2d3157fa88084b8ab"

    app "bananas.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "5e5d0adc0bca1821328b88c511eeb735a0764d6952659272f159b272ef8f9c54",
           x86_64_linux: "b4af9a638c151a384414d6ba53b9cd5777f7fbac541b610d4e4da2cffed66947"

    app_image "bananas_#{arch}.AppImage", target: "Bananas.AppImage"
  end

  url "https://github.com/mistweaverco/bananas/releases/download/v#{version}/bananas_#{url_end}",
      verified: "github.com/mistweaverco/bananas/"
  name "Bananas Screen Sharing"
  desc "Cross-platform screen sharing tool"
  homepage "https://getbananas.net/"
end
