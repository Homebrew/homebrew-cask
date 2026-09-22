cask "osu@tachyon" do
  arch arm: "Apple.Silicon", intel: "Intel"

  version "2026.921.0-lazer"
  sha256 arm:   "470f61581a2ba7d4bbd147efaf91cfba301c24f44c9c1e1de26760d645238087",
         intel: "fa4d4d6306838e5a041cc2fafce66e62e69f586aac5a5a330632fbcfa3ddf749"

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
