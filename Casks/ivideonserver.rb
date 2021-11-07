cask "ivideonserver" do
  version "3.10.0"
  sha256 "7e9d6a9c382f728fa8bf559365672b1f7312bc5345844ecd7e9064efe4239951"

  url "https://updates.iv-cdn.com/bundles/ivideon_server/#{version}/IvideonServer_#{version}_macosx-x86-64.dmg",
      verified: "updates.iv-cdn.com/"
  name "Ivideon Client"
  desc "Watch surveillance videos in your browser via your Ivideon account"
  homepage "https://www.ivideon.com/"

  livecheck do
    url "https://www.ivideon.com/downloads/"
    strategy :page_match
    regex(%r{href=.*?/IvideonServer_(\d+(?:\.\d+)*)_macosx-x86-64\.dmg}i)
  end

  app "IvideonServer.app"
end
