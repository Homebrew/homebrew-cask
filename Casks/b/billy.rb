cask "billy" do
  version "1.1.1,39"
  sha256 "cd0938cd01fe7a3d24de24864bd1771f62d13644a8622a79e1ed53542f77e313"

  url "https://cdn.amore.computer/releases/com.simonlou.Billy/#{version.csv.first}-#{version.csv.second}/Billy.dmg",
      verified: "cdn.amore.computer/releases/com.simonlou.Billy/"
  name "Billy"
  desc "Local-first invoice manager"
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
