cask "retrospective" do
  version "7.2.0"
  sha256 "7c3fa00793e821aeb2a63900c9f034b4c9618f6609d735e62ba28f89cd04420c"

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
