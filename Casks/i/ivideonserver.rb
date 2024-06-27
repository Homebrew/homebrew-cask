cask "ivideonserver" do
  version "3.13.3"
  sha256 "0076956fd8384cb0a2f98de093cbf1e32dbfa0345c85e8e832c3f41820622368"

  url "https://updates.iv-cdn.com/bundles/ivideon_server/#{version}/IvideonServer_#{version}_macosx-x86-64.dmg",
      verified: "updates.iv-cdn.com/"
  name "Ivideon Client"
  desc "Watch surveillance videos in your browser via your Ivideon account"
  homepage "https://www.ivideon.com/"

  livecheck do
    url "https://www.ivideon.com/downloads/"
    regex(/href=.*?IvideonServer[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]x86[._-]64\.dmg/i)
  end

  app "IvideonServer.app"

  zap trash: "~/Library/Saved Application State/com.ivideon.IvideonServer.savedState"

  caveats do
    requires_rosetta
  end
end
