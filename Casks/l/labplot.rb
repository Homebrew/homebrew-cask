cask "labplot" do
  arch arm: "arm64", intel: "x86_64"

  version "2.11.1"
  sha256 arm:   "61af87d94f83f9e254b2ada3ae801c9fdc9c034047c13aa7dd10dfc24b846380",
         intel: "59180a91db2661dc1f0bd52a684213b8ea8f449be3fe108636f96e1438411650"

  url "https://download.kde.org/stable/labplot/labplot-#{version}-#{arch}.dmg"
  name "LabPlot"
  desc "Data visualization and analysis software"
  homepage "https://labplot.kde.org/"

  livecheck do
    url "https://download.kde.org/stable/labplot/"
    regex(/href=.*?labplot[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}.dmg/i)
  end

  depends_on macos: ">= :sonoma"

  app "labplot#{version.major}.app"

  zap trash: [
    "~/Library/Preferences/labplot#{version.major}rc",
    "~/Library/Preferences/org.kde.UserFeedback.org.kde.labplot*.plist",
    "~/Library/Saved Application State/org.kde.labplot.SavedState",
  ]
end
