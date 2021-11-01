cask "ivideonclient" do
  version "6.11.0"
  sha256 "5b9dc6575a609084808bc471c133a0e6cf3a40f54fdfdd6f5104054e0f90c827"

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
