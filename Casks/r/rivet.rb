cask "rivet" do
  version "1.9.0"
  sha256 "d5805b49f411a26fe8fda30fc855996a895f1169920dd4db551b5853130b16d8"

  url "https://github.com/Ironclad/rivet/releases/download/app-v#{version}/Rivet.dmg", verified: "github.com/Ironclad/rivet/"
  name "Rivet"
  desc "Open-source visual AI programming environment"
  homepage "https://rivet.ironcladapp.com/"

  livecheck do
    url :url
    regex(/^app[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Rivet.app"

  zap trash: [
    "~/Library/Application Support/com.ironcladapp.rivet",
    "~/Library/Caches/com.ironcladapp.rivet",
    "~/Library/WebKit/com.ironcladapp.rivet",
  ]
end
