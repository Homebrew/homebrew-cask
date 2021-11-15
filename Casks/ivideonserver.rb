cask "ivideonserver" do
  version "3.10.1"
  sha256 "b6e8ee4343ab8b61600ee2eaeae4ad3f20d3b6fde0dfb8ddf25ecf747f87a962"

  url "https://updates.iv-cdn.com/bundles/ivideon_server/#{version}/IvideonServer_#{version}_macosx-x86-64.dmg",
      verified: "updates.iv-cdn.com/"
  name "Ivideon Client"
  desc "Watch surveillance videos in your browser via your Ivideon account"
  homepage "https://www.ivideon.com/"

  livecheck do
    url "https://www.ivideon.com/downloads/"
    regex(%r{href=.*?/IvideonServer[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]x86[._-]64\.dmg}i)
  end

  app "IvideonServer.app"
end
