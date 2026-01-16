cask "retrospective" do
  version "7.1.0"
  sha256 "26d9a99d38b513cad6ae774ed271793db54f379cdea17503ad5aed66666479e0"

  url "https://resources.centeractive.com/software/#{version}/retrospective-#{version.dots_to_underscores}-macos-jre.dmg"
  name "Retrospective"
  desc "Log analysis tool"
  homepage "https://retrospective.centeractive.com/"

  livecheck do
    url "https://resources.centeractive.com/software/current/version.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Retrospective.app"

  zap trash: "~/.Retrospective"
end
