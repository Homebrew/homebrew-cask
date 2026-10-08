cask "thelowtechguys-cling" do
  version "3.1.0"
  sha256 "f9833641f3860a5ebbe10fc78cdabe29e7c12010b577e8838a7b4d99a86d7f01"

  url "https://files.lowtechguys.com/releases/Cling-#{version}.dmg"
  name "The low-tech guys Cling"
  desc "Instant fuzzy finder for files including system and hidden files"
  homepage "https://lowtechguys.com/cling"

  livecheck do
    url "https://files.lowtechguys.com/cling/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Cling.app"

  uninstall launchctl: "com.lowtechguys.Cling.catch-up"

  zap trash: [
    "~/Library/Application Scripts/com.lowtechguys.Cling",
    "~/Library/Application Support/Cling",
    "~/Library/Caches/Cling",
    "~/Library/Caches/com.lowtechguys.Cling",
    "~/Library/HTTPStorages/com.lowtechguys.Cling",
    "~/Library/Preferences/com.lowtechguys.Cling.plist",
  ]
end
