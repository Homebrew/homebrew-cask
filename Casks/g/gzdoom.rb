cask "gzdoom" do
  version "4.14.0"
  sha256 "587b8e234392d4494e7abe32887d4ffce0920394d0f0a254048e03eabc7e3bca"

  url "https://github.com/ZDoom/gzdoom/releases/download/g#{version.csv.second || version.csv.first}/gzdoom-#{version.csv.first.dots_to_hyphens}-macOS.zip"
  name "GZDoom"
  desc "Adds an OpenGL renderer to the ZDoom source port"
  homepage "https://github.com/ZDoom/gzdoom"

  livecheck do
    url :url
    regex(%r{/g?(\d+(?:\.\d+)+)/gzdoom(?:-bin)?[._-]v?(\d+(?:[.-]\d+)+[a-z]?)(?:(?:-macOS)?\.dmg|-macOS\.zip)}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2].tr("-", ".") == match[1]) ? match[1] : "#{match[2].tr("-", ".")},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "GZDoom.app"

  zap trash: "~/Library/Preferences/gzdoom.ini"
end
