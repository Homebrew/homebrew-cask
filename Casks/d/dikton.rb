# frozen_string_literal: true

cask "dikton" do
  version "0.2.2"
  sha256 "87fa78e13bc7f96641c8040e4ef37210e87313e040a85337ae1dfd9cbba137b5"

  url "https://releases.dikton.app/download/v#{version}/Dikton_#{version}_universal.dmg"
  name "Dikton"
  desc "Real-time AI voice dictation with contextual rewriting"
  homepage "https://dikton.app/"

  livecheck do
    url "https://releases.dikton.app/latest/mac"
    strategy :header_match do |headers|
      next unless headers["location"]

      headers["location"][%r{/v(\d+(?:\.\d+)+)/}, 1]
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Dikton.app"

  zap trash: [
    "~/Library/Application Support/app.dikton.desktop",
    "~/Library/Application Support/CrashReporter/dikton-desktop_*.plist",
    "~/Library/Caches/app.dikton.desktop",
    "~/Library/Caches/dikton-desktop",
    "~/Library/HTTPStorages/dikton-desktop.binarycookies",
    "~/Library/Preferences/app.dikton.desktop.plist",
    "~/Library/Preferences/dikton-desktop.plist",
    "~/Library/WebKit/app.dikton.desktop",
    "~/Library/WebKit/dikton-desktop",
  ]
end
