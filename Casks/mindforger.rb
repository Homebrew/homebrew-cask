cask "mindforger" do
  version "1.54.0-20220307.225449-intel"
  sha256 "234b50d22d126eedaefcac5f3d331d1d913b2140b3ea4869f92042f2a5216c26"

  url "https://github.com/dvorka/mindforger/releases/download/#{version.split("-").first}/mindforger-#{version}.dmg",
      verified: "github.com/dvorka/mindforger/"
  name "MindForger"
  desc "Thinking notebook and Markdown IDE"
  homepage "https://www.mindforger.com/"

  livecheck do
    url :url
    regex(%r{href=.*?/mindforger-(\d+\.\d+\.\d+-\d{8}\.\d{6}-intel)\.dmg}i)
    strategy :github_latest do |page, regex|
      match = page.match(regex)
      next if match.blank?

      match[1]
    end
  end

  app "mindforger.app"
end
