cask "slate" do
  version "1.0.25"
  sha256 :no_check

  url "https://www.ninjamonkeysoftware.com/slate/versions/slate-#{version}.tar.gz",
      verified: "ninjamonkeysoftware.com/"
  name "Slate"
  desc "Window management application (replacement for Divvy/SizeUp/ShiftIt)"
  homepage "https://github.com/jigish/slate"

  livecheck do
    url "https://www.ninjamonkeysoftware.com/slate/appcast.xml"
    strategy :sparkle
  end

  app "Slate.app"

  zap trash: [
    "~/.slate",
    "~/.slate.js",
    "~/Library/Application Support/com.slate.Slate",
  ]
end
