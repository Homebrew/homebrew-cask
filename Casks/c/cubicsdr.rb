cask "cubicsdr" do
  url_end = on_system_conditional macos: "Darwin.dmg", linux: "x86_64.AppImage"

  version "0.2.5"

  on_macos do
    sha256 "9180e56e84a1d78935fb13ce362e3b8636a96b38d0695748078b43f9f6c3cb2c"

    app "CubicSDR.app"

    caveats do
      requires_rosetta
    end
  end
  on_linux do
    sha256 "52294f870659a1586182769446429d87a11b1821a882a67d846ca4a5170a77b4"

    depends_on arch: :x86_64

    app_image "CubicSDR-#{version}-x86_64.AppImage", target: "CubicSDR.AppImage"
  end

  url "https://github.com/cjcliffe/CubicSDR/releases/download/#{version}/CubicSDR-#{version}-#{url_end}",
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
end
