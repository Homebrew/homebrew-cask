cask "ivideonserver" do
  version "3.12.1"
  sha256 "5cfab1ee55cd3b0259d9c328523028d11e51d49f3d7dbd95a140c8b56ac5cc85"

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
