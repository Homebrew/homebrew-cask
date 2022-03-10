cask "jalview" do
  version "2.11.2.0"
  sha256 "2f7bd183e346b521a40a3e52dcb5a785e78061b38faff4a3923ac8d0da96afad"

  url "https://www.jalview.org/getdown/release/install4j/1.8/Jalview-#{version.dots_to_underscores}-macos-java_8.dmg"
  name "Jalview"
  desc "Multiple sequence alignment editor, visualisor, analysis and figure generator"
  homepage "https://www.jalview.org/"

  livecheck do
    url "https://www.jalview.org/getdown/release/install4j/1.8/updates.xml"
    regex(/newVersion="(\d+(?:\.\d+)*)"/i)
  end

  app "Jalview.app"

  zap trash: [
    "~/.jalview_properties",
    "~/Library/Saved Application State/org.jalview.jalview-desktop.savedState",
  ]
end
