cask "pomotroid" do
  version "1.2.0"
  sha256 "4a36752b69c02b1f5e2779549cd7a1f70a52638f7b7af47736444d64b5b01e70"

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/Pomotroid_#{version}_universal.dmg"
  name "Pomotroid"
  desc "Timer application"
  homepage "https://github.com/Splode/pomotroid"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Pomotroid.app"

  zap trash: [
    "~/Library/Application Support/pomotroid",
    "~/Library/Preferences/com.splode.pomotroid.plist",
    "~/Library/Saved Application State/com.splode.pomotroid.savedState",
  ]
end
