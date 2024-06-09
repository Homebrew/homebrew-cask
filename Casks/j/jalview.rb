cask "jalview" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.3.3"
  sha256 arm:   "b2414604e75ed029c7b520f1442ff3e3df00f677d88dd7068141ea8126a24423",
         intel: "47bb1f11b5fc2b94479818ae615b2752cc4286684fd8a5f5f5619a0728fb99e0"

  url "https://www.jalview.org/downloads/installers/release/Jalview-#{version.dots_to_underscores}-macos-#{arch}-java_8.dmg"
  name "Jalview"
  desc "Multiple sequence alignment editor, visualisor, analysis and figure generator"
  homepage "https://www.jalview.org/"

  livecheck do
    url "https://www.jalview.org/downloads/installers/release/Jalview-latest-macos-x64-java_8.dmg"
    regex(/Jalview-(\d(?:_\d+)*)-macos-x64-java_8\.dmg/i)
    strategy :header_match do |headers, regex|
      headers["location"].scan(regex).map do |match|
        match[0].tr("_", ".").to_s
      end
    end
  end

  app "Jalview.app"
  binary "#{appdir}/Jalview.app/Contents/MacOS/jalview"

  zap trash: [
    "~/.jalview_properties",
    "~/Library/Saved Application State/org.jalview.jalview-desktop.savedState",
  ]
end
