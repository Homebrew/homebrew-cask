cask "retrospective" do
  version "8.0.0"
  sha256 "435a7530601e4a6b71e549f2314d7a31d2f4cae4b5ebedfbe98f256ee6421ba9"

  url "https://resources.centeractive.com/software/#{version}/retrospective-#{version.dots_to_underscores}-macos-jre.dmg"
  name "Retrospective"
  desc "Log analysis tool"
  homepage "https://retrospective.centeractive.com/"

  livecheck do
    url "https://resources.centeractive.com/software/current/version.txt"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Retrospective.app"

  uninstall quit: "com.retrospective.product"

  zap trash: "~/.Retrospective"
end
