cask "ivideonserver" do
  version "3.14.0"
  sha256 "2728954313606436037da60d8f15510e7f50cebab87e4de667adde50b5d85396"

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
