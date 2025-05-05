cask "mailbird" do
  arch arm: "Apple-silicon", intel: "Intel"
  url_folder = on_arch_conditional arm: "apple", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.6.2"
  sha256 arm:   "cc3062567adfa0bc13690c71e90bcea800b52afb697d51caee4d51263c3f4683",
         intel: "acfceeea236b9491c1af02d252f6d75a4c3cf55f22503e698be67de2f569b18f"

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
