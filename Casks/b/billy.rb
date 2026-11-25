cask "billy" do
  version "1.3.1,51"
  sha256 "b018808b059008e87f31bb34707d80a22b7f9bd87ba5f60f01bea6590b560142"

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
