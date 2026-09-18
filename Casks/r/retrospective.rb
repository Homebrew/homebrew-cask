cask "retrospective" do
  version "7.3.0"
  sha256 "5c30c1f3baf1fc29b5c7330fb3955b13675ace6ec198edd310d8a3c6cea8fbf0"

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
