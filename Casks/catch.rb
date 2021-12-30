cask "catch" do
  version "2.2"
  sha256 "189b9817bfbd56749ec53c1a784f978f3a17d00e4e7e66bb27ed9243e8684b39"

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip",
      verified: "github.com/mipstian/catch/"
  name "Catch"
  desc "Broadcatching made easy"
  homepage "https://www.giorgiocalderolla.com/catch.html"

  depends_on macos: ">= :el_capitan"

  app "Catch.app"

  zap trash: "~/Library/Preferences/org.giorgiocalderolla.Catch.plist"
end
