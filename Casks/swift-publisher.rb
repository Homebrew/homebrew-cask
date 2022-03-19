cask "swift-publisher" do
  version "5.6.2,4777"
  sha256 :no_check

  url "https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg",
      verified: "belightsoft.s3.amazonaws.com/"
  name "Swift Publisher"
  desc "Page layout and desktop publishing application"
  homepage "https://www.swiftpublisher.com/"

  livecheck do
    url "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"
end
