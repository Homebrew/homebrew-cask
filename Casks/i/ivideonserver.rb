cask "ivideonserver" do
  version "3.13.2"
  sha256 "daf25bfec72b9beb00091d4652e271a9efd6f0752ffd3918278b9cf13189f85b"

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
end
