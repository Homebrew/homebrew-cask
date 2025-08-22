cask "labplot" do
  arch arm: "arm64", intel: "x86_64"

  version "2.12.1"
  sha256 arm:   "5bf80348d44a6d2921468a23f476a6c76fdbf47dc8199eac54db533ea6593de3",
         intel: "886bcecff99e75d3930cf2449c341d8d8f2cd5b12f70002b372bad5ea78436f4"

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
