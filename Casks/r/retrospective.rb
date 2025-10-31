cask "retrospective" do
  version "7.0.0"
  sha256 "fc4014f43189a1a63ab3b5201b2fad1190e0e304e3e47e22bf327face1c57288"

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
