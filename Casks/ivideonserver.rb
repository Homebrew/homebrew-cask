cask "ivideonserver" do
  version "3.9.1"
  sha256 "0ebcf22ebeb1e7173d0a37605d0dc5dcec7ad5cd0d532f0c7d06657fc74666ff"

  url "https://updates.iv-cdn.com/bundles/ivideon_server/#{version}/IvideonServer_#{version}_macosx-x86-64.dmg",
      verified: "updates.iv-cdn.com/"
  name "Ivideon Client"
  homepage "https://www.ivideon.com/"

  livecheck do
    url "https://www.ivideon.com/downloads/"
    strategy :page_match
    regex(%r{href=.*?/IvideonServer_(\d+(?:\.\d+)*)_macosx-x86-64\.dmg}i)
  end

  app "IvideonServer.app"
end
