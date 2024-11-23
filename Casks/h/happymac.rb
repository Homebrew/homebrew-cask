cask "happymac" do
  version "0.1.0"
  sha256 :no_check

  url "https://chrislaffra.com/happymac/happymac.dmg",
      verified: "chrislaffra.com/"
  name "HappyMac"
  desc "Watches, suspends and resumes background processes that slow down your system"
  homepage "https://github.com/laffra/happymac"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :sierra"

  app "happymac.app"

  zap trash: "~/HappyMacApp"

  caveats do
    requires_rosetta
  end
end
