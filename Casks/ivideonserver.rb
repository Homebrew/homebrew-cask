cask "ivideonserver" do
  version "3.12.0"
  sha256 "b6f95a23a745cc0e402cc0e6371087c73b49d36cfee19ce299d7a065d3c9e71b"

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
