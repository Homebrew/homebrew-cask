cask "swift-publisher" do
  version "5.5.6,4560"
  sha256 "6fcf05dfb6d7ba5a0904dede306231de204464ba71e46ef66cd7592a6891ac25"

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg"
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name "Swift Publisher"
  desc "Page layout and desktop publishing application"
  homepage "https://www.belightsoft.com/swift-publisher/"

  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"
end
