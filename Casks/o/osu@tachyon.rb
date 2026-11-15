cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.1115.0-lazer"
  sha256 arm:   "600ed8d8a41ab3d3ea64ec4cbf5220b53b6b6edd32f92b743264faacaee61faa",
         intel: "02581ddca6f6323afb5b72b96791139fe8222d0f3cc54e68dfd54130925f2292"

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
  depends_on :macos

  app "osu!.app"

  uninstall quit: "sh.ppy.osu.lazer"

  zap trash: [
    "~/.local/share/osu",
    "~/Library/Saved Application State/sh.ppy.osu.lazer.savedState",
  ]
end
