cask "mailbird" do
  arch arm: "Apple-silicon", intel: "Intel"
  url_folder = on_arch_conditional arm: "apple", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "70bd15ec7568b180bc4deb9645f8b75502a356ec4afe2c6f0b67fed20c5619a5",
         intel: "4b53473bdd0729606911d6b944052f8ed605b13b560669b0f78dd211c0339fa6"

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
