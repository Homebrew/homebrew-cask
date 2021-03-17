cask "ivideonclient" do
  version "6.10.0"
  sha256 "08fd2d9d4228a3d004063cb477ad2390295707d09edca920409d5ce994a34939"

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
