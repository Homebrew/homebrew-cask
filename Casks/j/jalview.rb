cask "jalview" do
  arch arm: "aarch64", intel: "x64"

  version "2.11.3.3"
  sha256 arm:   "63c3b141ca5b60b5d05a4cb68c17310b4b46144fee4a574f29f4bdac90d777e5",
         intel: "a9c6bd5885cceb99e8d56a38b8038c62f6b89c9c03181cb0c181ed96dc47cdc3"

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
