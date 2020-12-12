cask "swiftstack-client" do
  version "1.27.1"
  sha256 "d91cd9da8470954978ee3cdcd74faaf4be3c128c5895d28b46b00778d8b7558e"

  url "https://storage.googleapis.com/swiftstack/swiftstackclient-#{version}.dmg",
      verified: "storage.googleapis.com/swiftstack/"
  appcast "https://storage.googleapis.com/swiftstack/swiftstackclient_macosx-x86_64_latest.html"
  name "Swift Stack GUI Client"
  homepage "https://www.swiftstack.com/"

  app "SwiftStack Client.app"
end
