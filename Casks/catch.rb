cask "catch" do
  version "2.0.1"
  sha256 "48b6bba277db609cf5848d35d8a4325e979b3e8ef21da13f935d8885bb19c135"

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip",
      verified: "github.com/mipstian/catch/"
  name "Catch"
  desc "Broadcatching made easy"
  homepage "https://www.giorgiocalderolla.com/catch.html"

  depends_on macos: ">= :el_capitan"

  app "Catch.app"
end
