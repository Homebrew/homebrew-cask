cask "swift-publisher" do
  version "5.5.6"
  sha256 "e6509b38496bf0bb1eaff1ea88fab00f331b762858c13a1264dd61bf6d8f8c1f"

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg"
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name "Swift Publisher"
  desc "Page layout and desktop publishing application"
  homepage "https://www.belightsoft.com/swift-publisher/"

  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"
end
