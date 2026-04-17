cask "retrospective" do
  version "7.2.0"
  sha256 "d87d42bd2f9dfba6a6d32615ef2f494c49b47be4c8938e4f902ecd53ca8716da"

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
