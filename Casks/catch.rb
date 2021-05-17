cask "catch" do
  version "2.0.2"
  sha256 "edcbbe4afaa1968cf477611ceef47ccac3fffa1b7ab826ff8a5498a6f8890eac"

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip",
      verified: "github.com/mipstian/catch/"
  name "Catch"
  desc "Broadcatching made easy"
  homepage "https://www.giorgiocalderolla.com/catch.html"

  depends_on macos: ">= :el_capitan"

  app "Catch.app"

  zap trash: "~/Library/Preferences/org.giorgiocalderolla.Catch.plist"
end
