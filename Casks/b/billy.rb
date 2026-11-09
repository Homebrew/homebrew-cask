cask "billy" do
  version "1.2.1,44"
  sha256 "c785c8d9d3863b5969334940470523daebde37d3004584abfd64fbb22586a862"

  url "https://cdn.amore.computer/releases/com.simonlou.Billy/#{version.csv.first}-#{version.csv.second}/Billy.dmg"
  name "Billy"
  desc "Invoice manager"
  homepage "https://usebilly.app/"

  livecheck do
    url "https://api.amore.computer/v1/apps/com.simonlou.Billy/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Billy.app"

  uninstall quit: "com.simonlou.Billy"

  zap trash: [
    "~/Library/Application Scripts/com.simonlou.Billy",
    "~/Library/Application Scripts/com.simonlou.Billy.BillyMailExtension",
    "~/Library/Application Scripts/group.com.simonlou.Billy",
    "~/Library/Containers/com.simonlou.Billy",
    "~/Library/Group Containers/group.com.simonlou.Billy",
  ]
end
