cask "labplot" do
  arch arm: "arm64", intel: "x86_64"

  version "2.12.1"
  sha256 arm:   "6f6f8675189059d08a6a6cfe33b14ff8b864ce18ea2987d412f120a31e32aa56",
         intel: "61d1bca44121bfdf87252feb76673d8f7719b4597dc16a7434563550371b9711"

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
