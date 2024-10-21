cask "mailbird" do
  arch arm: "Apple-silicon", intel: "Intel"
  url_folder = on_arch_conditional arm: "apple", intel: "intel"
  livecheck_arch = on_arch_conditional arm: "arm64", intel: "x86_64"

  version "1.0.3"
  sha256 arm:   "c807aa27ded2919cda7fd2d3757e5c88aa89fedd6b1f10fadfd73f331bf4e80e",
         intel: "9f379eb8ea7b23a37885c7e8245dbe1c652b629f8d369339ebfb1e1f97306fe8"

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
