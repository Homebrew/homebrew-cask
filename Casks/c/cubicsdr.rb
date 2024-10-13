cask "cubicsdr" do
  version "0.2.5"
  sha256 "9180e56e84a1d78935fb13ce362e3b8636a96b38d0695748078b43f9f6c3cb2c"

  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-Darwin.dmg",
      verified: "github.com/cjcliffe/CubicSDR/"
  name "CubicSDR"
  desc "Cross-platform software-defined radio application"
  homepage "https://cubicsdr.com/"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^CubicSDR[._-]v?(\d+(?:\.\d+)+)(?:[._-]Darwin)?\.(?:dmg|pkg|zip)$/i)
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

  app "CubicSDR.app"

  caveats do
    requires_rosetta
  end
end
