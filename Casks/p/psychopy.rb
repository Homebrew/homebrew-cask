cask "psychopy" do
  arch arm: "arm64", intel: "x86_64"

  version "2026.2.5,2026.2.5post1"
  sha256 arm:   "71eb2e925424bedb72286f4a4e1656883e0482a274ac655a67612f37ee54f86a",
         intel: "bc7cec41bc80d90c44d98199e636736a4bc4c7a279ccfefced6b27a863c4478f"

  url "https://github.com/psychopy/psychopy/releases/download/#{version.csv.first}/StandalonePsychoPy-#{version.csv.second || version.csv.first}-macOS-#{arch}-3.11.dmg"
  name "PsychoPy"
  desc "Create experiments in behavioral science"
  homepage "https://www.psychopy.org/"

  # The filename version can differ from the tag version (e.g. rebuilt
  # installers), so we include both in the `version` when necessary.
  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/StandalonePsychoPy[._-]v?(\d+(?:\.\d+)+(?:post\d+)?)[._-]macOS[._-]#{arch}[._-]}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        next match[1] if match[1] == match[2]

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on :macos

  app "PsychoPy.app"

  uninstall quit: "org.opensciencetools.psychopy"

  zap trash: [
    "~/.psychopy3",
    "~/Library/Preferences/org.opensciencetools.psychopy.plist",
    "~/Library/Saved Application State/org.opensciencetools.psychopy.savedState",
  ]
end
