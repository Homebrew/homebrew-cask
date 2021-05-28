cask "catch" do
  version "2.1"
  sha256 "3a9dfd7bfba6ce7c6fc9a2cfb674c521c7a2d7d9c1dd6fccb3232e13e227402b"

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip",
      verified: "github.com/mipstian/catch/"
  name "Catch"
  desc "Broadcatching made easy"
  homepage "https://www.giorgiocalderolla.com/catch.html"

  depends_on macos: ">= :el_capitan"

  app "Catch.app"

  zap trash: "~/Library/Preferences/org.giorgiocalderolla.Catch.plist"
end
