cask "abscissa" do
  version "4.1.1"
  sha256 "2a43ba146b1c2e6ffec3e056d3a850296b42c0f309c22b33c2bef3e4678b4288"

  url "http://rbruehl.macbay.de/Abscissa/Downloads/Abscissa-#{version}.zip"
  name "Abscissa"
  desc "Plotting software"
  homepage "http://rbruehl.macbay.de/Abscissa/"

  disable! date: "2025-04-03", because: :no_longer_available

  depends_on macos: ">= :sierra"

  app "Abscissa.app"

  zap trash: [
    "~/Library/Preferences/de.macbay.rbruehl.Abscissa.plist",
    "~/Library/Saved Application State/de.macbay.rbruehl.Abscissa.savedState",
  ]
end
