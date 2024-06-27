cask "haroopad" do
  version "0.13.2"
  sha256 "97ef0a7df52daeace17ea01a1ca82dc974955c147593f251fb7c04ca0ff09064"

  url "https://bitbucket.org/rhiokim/haroopad-download/downloads/Haroopad-v#{version}-x64.dmg",
      verified: "bitbucket.org/rhiokim/haroopad-download/"
  name "Haroopad"
  homepage "http://pad.haroopress.com/"

  app "Haroopad.app"

  zap trash: "~/Library/Application Support/Haroopad"

  caveats do
    requires_rosetta
  end
end
