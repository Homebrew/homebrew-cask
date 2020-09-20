cask "swift-publisher" do
  version "5.5.5"
  sha256 "d60b7013daceadb22e47774123bda9b20987411561128e60d52745f3c63ba86a"

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg"
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name "Swift Publisher"
  desc "Page layout and desktop publishing application"
  homepage "https://www.belightsoft.com/swift-publisher/"

  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"
end
