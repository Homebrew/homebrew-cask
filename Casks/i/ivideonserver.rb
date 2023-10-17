cask "ivideonserver" do
  version "3.13.0"
  sha256 "ae33bcb0c9064f5d018bb3671710ecd0065aca9b5c0f95b2f9a696330afba287"

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
end
