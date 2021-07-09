cask "ivideonclient" do
  version "6.10.1"
  sha256 "49b57c42ed8fc94814bdf2b1108f363fdc5b568997b2f43edc094b807daea11e"

  url "https://updates.iv-cdn.com/bundles/ivideon_client/#{version}/IvideonClient_#{version}_macosx-x86-64.dmg",
      verified: "updates.iv-cdn.com/"
  name "Ivideon Client"
  desc "App to watch Ivideon’s cloud-based surveillance videos"
  homepage "https://www.ivideon.com/"

  livecheck do
    url "https://www.ivideon.com/downloads/"
    strategy :page_match
    regex(%r{href=.*?/IvideonClient_(\d+(?:\.\d+)*)_macosx-x86-64\.dmg}i)
  end

  app "IvideonClient.app"
end
