cask "macpacker" do
  version "1.3.1"
  sha256 "fddaec2994ad913394c6f2490d5c02cfd133f9b3af0602d4adc5250904f7efca"

  url "https://github.com/sarensw/MacPacker/releases/download/v#{version}/MacPacker_v#{version}.zip"
  name "MacPacker"
  desc "Archive manager"
  homepage "https://macpacker.app/"

  livecheck do
    url "https://macpacker-releases.s3.amazonaws.com/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacPacker.app"

  uninstall quit: "com.sarensx.MacPacker"

  zap trash: [
    "~/Library/Application Scripts/com.sarensx.MacPacker*",
    "~/Library/Application Scripts/group.app.macpacker",
    "~/Library/Containers/com.sarensx.MacPacker*",
    "~/Library/Group Containers/group.app.macpacker",
  ]
end
