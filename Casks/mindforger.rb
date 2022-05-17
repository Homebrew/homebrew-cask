cask "mindforger" do
  version "1.54.0-20220307.225449"
  sha256 "234b50d22d126eedaefcac5f3d331d1d913b2140b3ea4869f92042f2a5216c26"

  url "https://github.com/dvorka/mindforger/releases/download/#{version.split("-").first}/mindforger-#{version}-intel.dmg",
      verified: "github.com/dvorka/mindforger/"
  name "MindForger"
  desc "Thinking notebook and Markdown IDE"
  homepage "https://www.mindforger.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/href=.*?mindforger[._-]v?(\d+(?:[.-]\d+)+)-intel\.dmg/i)
  end

  app "mindforger.app"
end
