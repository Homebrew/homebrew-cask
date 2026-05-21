cask "frescobaldi" do
  arch intel: "-Intel"

  version "4.0.5"
  sha256 arm:   "9ddd7e2b13484a7e40ea488c58cca29b437b458925765e885ca3f5cc4c15a771",
         intel: "640d6ee9f8bff366c7c496a22990182fb8a9cab8962d557131ff4ee15a1c1a69"

  url "https://github.com/frescobaldi/frescobaldi/releases/download/v#{version}/Frescobaldi-#{version}#{arch}.dmg",
      verified: "github.com/frescobaldi/frescobaldi/"
  name "Frescobaldi"
  desc "LilyPond editor"
  homepage "https://frescobaldi.org/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Frescobaldi[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: :big_sur

  app "Frescobaldi.app"

  zap trash: "~/Library/Preferences/org.frescobaldi.frescobaldi.plist"
end
