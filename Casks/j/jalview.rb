cask "jalview" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.3.0"
  sha256 arm:   "c67afbdc207db642f96454449e8594bb80aef4e0996faa2e7ddacd891638955c",
         intel: "4faa926bc6d925bf6332eae2fc59c29d4eec61cb502509735b57a4adb5f0d5fd"

  url "https://www.jalview.org/downloads/installers/release/Jalview-#{version.dots_to_underscores}-macos-#{arch}-java_8.dmg"
  name "Jalview"
  desc "Multiple sequence alignment editor, visualisor, analysis and figure generator"
  homepage "https://www.jalview.org/"

  livecheck do
    url "https://www.jalview.org/getdown/release/install4j/1.8/updates.xml"
    regex(/newVersion="(\d+(?:\.\d+)*)"/i)
  end

  app "Jalview.app"
  binary "#{appdir}/Jalview.app/Contents/MacOS/jalview"

  zap trash: [
    "~/.jalview_properties",
    "~/Library/Saved Application State/org.jalview.jalview-desktop.savedState",
  ]
end
