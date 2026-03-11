cask "pomotroid" do
  version "1.1.0"
  sha256 "ebccc0b37503e87a581088a4cd3682a79b272450382512aeb130386ef5f14c8b"

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
