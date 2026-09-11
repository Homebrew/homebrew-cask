cask "billy" do
  version "1.2.0,43"
  sha256 "96c9e0e3a0b8d26fd6d4b298b5d06271f2c9120aa0d23e85eedf18a5b2916982"

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

  zap trash: [
    "~/Library/Application Scripts/com.simonlou.Billy",
    "~/Library/Application Scripts/com.simonlou.Billy.BillyMailExtension",
    "~/Library/Application Scripts/group.com.simonlou.Billy",
    "~/Library/Containers/com.simonlou.Billy",
    "~/Library/Group Containers/group.com.simonlou.Billy",
  ]
end
