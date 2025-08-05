cask "catch" do
  version "2.3"
  sha256 "8e138ec2c3e2d2a9f66eabc534f32f3ca64a3cd967b8896a3feddd438b391411"

  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip",
      verified: "github.com/mipstian/catch/"
  name "Catch"
  desc "Broadcatching made easy"
  homepage "https://www.giorgiocalderolla.com/catch.html"

  livecheck do
    url "https://raw.github.com/mipstian/catch/master/update/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Catch.app"

  zap trash: "~/Library/Preferences/org.giorgiocalderolla.Catch.plist"
end
