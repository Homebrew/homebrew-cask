cask "gama-platform" do
  arch arm: "_M1"

  version "2025.09.0,17.09.25_860732f"
  sha256 arm:   "e88709354ba28b05b6cf01e879401b1d964a3f4a6bbd8026ae8afc9e7c55ca05",
         intel: "9740ae814009e6d0ecb1bb560395bd083c9498916b5a54787b24aad962f3167e"

  url "https://github.com/gama-platform/gama/releases/download/#{version.csv.first}/GAMA_#{version.csv.first}_MacOS#{arch}_#{version.csv.second}.dmg"
  name "GAMA Platform"
  desc "IDE for building spatially explicit agent-based simulations"
  homepage "https://gama-platform.org/"

  # Using :github_latest as repo contains pre-release tags
  livecheck do
    url :url
    regex(/GAMA[._-]v?(\d+(?:\.\d+)+)[._-]MacOS[._-](\d+(?:\.\d+)+[._-]\h+)\.dmg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  conflicts_with cask: "gama-jdk"
  depends_on macos: :big_sur

  app "Gama.app"

  zap trash: [
    "~/Gama_Workspace",
    "~/Library/Preferences/Gama.plist",
  ]

  caveats do
    depends_on_java "21"
  end
end
