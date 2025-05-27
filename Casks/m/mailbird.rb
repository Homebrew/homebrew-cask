cask "mailbird" do
  arch arm: "Apple-silicon", intel: "Intel"
  url_folder = on_arch_conditional arm: "apple", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.7.0"
  sha256 arm:   "69395a9a6ea6ceb3a44d5cd7c233d4ee08b17bd8d3e4bad2e21fb45c27160718",
         intel: "f6b363838a976adef1a94e1b44287ea47aa79fb1af20466889b9ddb2c12e0822"

  url "https://download.getmailbird.com/installers/mailbird_next/macos/#{url_folder}/Mailbird-for-Mac-with-#{arch}-version-#{version}.dmg"
  name "Mailbird"
  desc "Email client"
  homepage "https://www.getmailbird.com/"

  livecheck do
    url "https://links.getmailbird.com/mailbird_mac_#{livecheck_arch}_installer"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "Mailbird.app"

  zap trash: [
    "~/Library/Preferences/com.getmailbird.Mailbird Helper (Renderer).plist",
    "~/Library/Saved Application State/com.getmailbird.Mailbird.savedState",
  ]
end
