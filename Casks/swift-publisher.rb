cask "swift-publisher" do
  version "5.5.6,4560"
  sha256 :no_check

  url "https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg",
      verified: "belightsoft.s3.amazonaws.com/"
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name "Swift Publisher"
  desc "Page layout and desktop publishing application"
  homepage "https://www.belightsoft.com/swift-publisher/"

  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"
end
