cask "p2p-kiwi" do
  arch arm: "arm64", intel: "x86_64"
  url_end = on_system_conditional macos: "universal.dmg", linux: "#{arch}.AppImage"

  version "1.0.0"

  on_macos do
    sha256 "18d6082cdcf073e0842d82d9235882454ed42325868547da56700a4542703b6f"

    app "p2p.kiwi.app"

    zap trash: [
      "~/Library/Application Support/bananas",
      "~/Library/Preferences/net.getbananas.app.plist",
      "~/Library/Saved Application State/net.getbananas.app.savedState",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "ee1db1cfd19c508b7c02dd4fd4c3334a9bbc8377e093c0283c79388871983bb9",
           x86_64_linux: "7bf9b8e2b4e200cc567bdfa570a46e377c355090621125bc1ce1a50671f60386"

    app_image "p2p-kiwi_#{arch}.AppImage", target: "p2p.kiwi.AppImage"
  end

  url "https://github.com/dont-be-evil-company/p2p.kiwi/releases/download/v#{version}/p2p-kiwi_#{url_end}"
  name "p2p.kiwi"
  desc "Cross-platform screen sharing tool"
  homepage "https://p2p.kiwi/"
end
