cask "motrix@beta" do
  arch arm: "-arm64", intel: "-x64"

  version "2.0.0-beta.21"
  sha256 arm:   "d3742f611eb22f65c9aaf4820056fc9159f20aebcc8bab1e488288d4a96d2f7f",
         intel: "4a3ec6ed14a2031003e79fd3fd5d55e513058ec5f5fcf64f2d3dfd21f505913c"

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.dmg"
  name "Motrix Beta"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:[._-]beta\.\d+)?)$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || !release["prerelease"]

        match = release["tag_name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  auto_updates true
  conflicts_with cask: "motrix"
  depends_on macos: :monterey

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Caches/app.motrix.native",
    "~/Library/Logs/Motrix",
    "~/Library/Preferences/app.motrix.native.plist",
    "~/Library/Saved Application State/app.motrix.native.savedState",
  ]
end
