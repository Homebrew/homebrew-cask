cask "radial" do
  version "5.2.2"
  sha256 :no_check

  url "https://radial.appverge.net/downloads/Radial.dmg"
  name "Radial"
  desc "Gesture-based launcher for apps, text snippets, and scripts"
  homepage "https://radial.appverge.net/"

  # The Sparkle feed can contain items on the "beta" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://radial.appverge.net/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Radial.app"

  zap trash: [
    "~/Library/Caches/dk.FirstForm.Radial",
    "~/Library/HTTPStorages/dk.FirstForm.Radial",
    "~/Library/Preferences/dk.FirstForm.Radial.plist",
  ]
end
