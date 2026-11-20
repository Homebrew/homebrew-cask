cask "billy" do
  version "1.3.0,50"
  sha256 "17021a426834e06a80a43802eb3111aee93d4d6473a34769ade341c68a9d995b"

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
