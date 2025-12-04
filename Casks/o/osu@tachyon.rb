cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2025.1203.0-tachyon"
  sha256 arm:   "43aa75278e21e5b4799fff17b35ddcbdb8ab6295f9c8e4e69769861a98050bc1",
         intel: "ca5e61ec42efc6c48ebf0cb9c9c465d0f5210de1db71436c0ff59b772c0e0495"

  url "https://github.com/ppy/osu/releases/download/#{version}/osu.app.#{arch}.zip"
  name "osu! (tachyon)"
  desc "Rhythm game"
  homepage "https://github.com/ppy/osu/"

  # There can be a notable gap between tag and release, so it's necessary to
  # check releases instead of Git tags. Tachyon releases are marked as
  # "pre-release" on GitHub, so we have to use the `GithubReleases` strategy.
  livecheck do
    url :url
    regex(/^v?((\d+(?:\.\d+)+)(?:-\w+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "osu"

  app "osu!.app"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
