cask "labplot" do
  arch arm: "arm64", intel: "x86_64"

  version "2.12.0"
  sha256 arm:   "b4ccf38806584755174c34ace9574261c96d1d6d19003296c6a9414bae046403",
         intel: "fa133a87a88762da6090473f36ad764dc940e7208e0a0fc10b212ed86d480051"

  url "https://download.kde.org/stable/labplot/labplot-#{version}-#{arch}.dmg"
  name "LabPlot"
  desc "Data visualization and analysis software"
  homepage "https://labplot.kde.org/"

  livecheck do
    url "https://download.kde.org/stable/labplot/"
    regex(/href=.*?labplot[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :sonoma"

  app "LabPlot.app"

  zap trash: [
    "~/Library/Preferences/labplot#{version.major}rc",
    "~/Library/Preferences/org.kde.UserFeedback.org.kde.labplot*.plist",
    "~/Library/Saved Application State/org.kde.labplot.SavedState",
  ]
end
