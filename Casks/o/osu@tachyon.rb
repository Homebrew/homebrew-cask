cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.1114.0-tachyon"
  sha256 arm:   "b3896c6efd0912e9e585569c1426e68b96e159c9f50491a6cd9a80335646355e",
         intel: "29042406206ddb411266e2c941007765a9fa73dd14901e6a9432d4a955a302b0"

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
