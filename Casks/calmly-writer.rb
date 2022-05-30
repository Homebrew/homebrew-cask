cask "calmly-writer" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "2.0.42"

  if Hardware::CPU.intel?
    sha256 "9e10ababd9f8912747aa51b923da2ee7978b1ef7f3c15adc894f7468c305f010"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}.dmg"
  else
    sha256 "e5b35d0b00f7a1f9660ae935d670d502b27c311c13ac990d112be31c75dd7632"
    url "https://www.calmlywriter.com/releases/Calmly%20Writer-#{version}-#{arch}.dmg"
  end

  name "Calmly Writer"
  desc "Word processor with markdown formatting and select themes"
  homepage "https://calmlywriter.com/"

  livecheck do
    url "https://calmlywriter.com/releases/#{arch}/download.php"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "Calmly Writer.app"

  zap trash: [
    "~/Library/Preferences/calmlywriter.plist",
    "~/Library/Saved Application State/calmlywriter.savedState",
  ]
end
