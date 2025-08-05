cask "pomotroid" do
  version "0.13.0"
  sha256 "fab1a8598490db267639609b42312a8947ee2de075164935d0eba60c57790788"

  url "https://github.com/Splode/pomotroid/releases/download/v#{version}/pomotroid-#{version}-macos.dmg"
  name "Pomotroid"
  desc "Timer application"
  homepage "https://github.com/Splode/pomotroid"

  app "Pomotroid.app"

  zap trash: [
    "~/Library/Application Support/pomotroid",
    "~/Library/Preferences/com.splode.pomotroid.plist",
    "~/Library/Saved Application State/com.splode.pomotroid.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
