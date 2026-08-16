cask "focusany" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "mac", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.1.0"
  sha256 arm:          "500748811382d04e1756500ece790385fdec272e2a70162554e6e3dc7300757b",
         intel:        "29114bec682c819f469ae667244dfa99a88d040a9ae33ad9dd11e43dd3cf8fef",
         arm64_linux:  "c92a8f257ed3202b6359bd78f7358bd38a70ff888e96d4bfcf352e612c6c3c25",
         x86_64_linux: "91c2743721a046cdedb745173ecc08b442bd23bf242e6706458ad689ba1a94be"

  on_macos do
    app "FocusAny.app"

    uninstall quit: "com.focusany.app"

    zap trash: [
      "~/.focusany",
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.focusany.app.sfl*",
      "~/Library/Application Support/focusany",
      "~/Library/Preferences/com.focusany.app.plist",
      "~/Library/Preferences/FocusAny.plist",
      "~/Library/Saved Application State/FocusAny.savedState",
    ]
  end
  on_linux do
    app_image "FocusAny-#{version}-linux-#{arch}.AppImage", target: "FocusAny.AppImage"
  end

  url "https://github.com/modstart-lib/focusany/releases/download/v#{version}/FocusAny-#{version}-#{os}-#{arch}.#{url_end}",
      verified: "github.com/modstart-lib/focusany/"
  name "FocusAny"
  desc "Open source desktop toolbox"
  homepage "https://focusany.com/"
end
