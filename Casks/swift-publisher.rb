cask "swift-publisher" do
  version "5.5.6"
  sha256 "49645d8094deb89a5ee492243309e57d8cdd163fb5db88ebf93a0b6b71ae1d72"

  # belightsoft.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://belightsoft.s3.amazonaws.com/SwiftPublisher.dmg"
  appcast "https://www.belightsoft.com/download/updates/appcast_SwiftPublisher#{version.major}.xml"
  name "Swift Publisher"
  desc "Page layout and desktop publishing application"
  homepage "https://www.belightsoft.com/swift-publisher/"

  depends_on macos: ">= :sierra"

  app "Swift Publisher #{version.major}.app"
end
