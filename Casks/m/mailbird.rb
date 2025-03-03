cask "mailbird" do
  arch arm: "Apple-silicon", intel: "Intel"
  url_folder = on_arch_conditional arm: "apple", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.3.2"
  sha256 arm:   "b0738b19aeb9cb2ad1e613649b3f6b781a1eff5b6ba3541461c369df557f3160",
         intel: "0bb29b109b359890bab22549801a42d95a8ecc415fba6f346fd133d665e5407a"

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
