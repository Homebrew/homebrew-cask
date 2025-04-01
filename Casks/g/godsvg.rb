cask "godsvg" do
  version "1.0-alpha8"
  sha256 "eeee6a16090916489d2792d22ed5e478a9c578d2ab905610a332b77ff93575d5"

  url "https://godsvg.com/downloads/GodSVG.MacOS.zip"
  name "GodSVG"
  desc "SVG editor"
  homepage "https://godsvg.com/"

  # This uses the `GithubReleases` strategy because all releases are marked as
  # pre-release on GitHub. We should be able to switch to the `GithubLatest`
  # strategy if/when there's a "latest" release in the future.
  livecheck do
    url "https://github.com/MewPurPur/GodSVG/releases"
    regex(/^v?(\d+(?:\.\d+)+.*)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  app "#{name.first}.app"

  uninstall quit: "com.godsvg"

  zap trash: [
    "~/Library/Application Support/GodSVG",
    "~/Library/Saved Application State/com.godsvg.savedState",
  ]
end
