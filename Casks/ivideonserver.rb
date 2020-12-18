cask "ivideonserver" do
  version "3.8.0"
  sha256 "6e8372627144cef24b8b7425ea123436cd8d1de9277aefb19470cdc822d29109"

  url "https://updates.iv-cdn.com/bundles/ivideon_server/#{version}/IvideonServer_#{version}_macosx-x86-64.dmg",
      verified: "updates.iv-cdn.com/"
  appcast "https://www.ivideon.com/downloads/"
  name "Ivideon Client"
  homepage "https://www.ivideon.com/"

  app "IvideonServer.app"
end
