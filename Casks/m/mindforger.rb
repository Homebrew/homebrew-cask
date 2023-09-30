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
    regex(/^mindforger[._-]v?(\d+(?:[.-]\d+)+)-intel\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "mindforger.app"
end
