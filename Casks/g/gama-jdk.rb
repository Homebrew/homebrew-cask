cask "gama-jdk" do
  arch arm: "_M1"

  version "2025.09.0,17.09.25_860732f"
  sha256 arm:   "239959e7c593fbb91814b8b4385d9fb11f3c861507f7f66e622d4f9efadddd50",
         intel: "060f2832a9f56db6b8313bc3920058bbce9dcbba338233f4f9df5bb36bc0c81e"

  url "https://github.com/gama-platform/gama/releases/download/#{version.csv.first}/GAMA_#{version.csv.first}_MacOS#{arch}_with_JDK_#{version.csv.second}.dmg"
  name "GAMA Platform with embedded JDK"
  desc "IDE for building spatially explicit agent-based simulations"
  homepage "https://gama-platform.org/"

  # Using :github_latest as repo contains pre-release tags
  livecheck do
    url :url
    regex(/GAMA[._-]v?(\d+(?:\.\d+)+)[._-]MacOS[._-]with[._-]JDK[._-](\d+(?:\.\d+)+[._-]\h+)\.dmg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  conflicts_with cask: "gama-platform"
  depends_on macos: :big_sur

  app "Gama.app"

  zap trash: [
    "~/Gama_Workspace",
    "~/Library/Preferences/Gama.plist",
  ]
end
