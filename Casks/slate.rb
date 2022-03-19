cask "slate" do
  version "1.0.25"
  sha256 "c19a27fda6cd61efd9c7b21949646bbc20919f18e99bf2bee24874cbc1acba43"

  url "https://www.ninjamonkeysoftware.com/slate/versions/slate-#{version}.tar.gz",
      verified: "ninjamonkeysoftware.com/"
  name "Slate"
  desc "Window management application"
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
