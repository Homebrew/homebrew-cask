cask "dosbox-x" do
  arch arm: "arm64", intel: "x86_64"

  on_arm do
    version "2025.01.01,20250101083049"
    sha256 "ccac67748b79fdd261b28f5541dfbcd044f6514b2ca825624869b580400358bf"
  end
  on_intel do
    version "2025.01.01,20250101083049"
    sha256 "d62cec3cdef5b1ca1ccfce58970861ec91f5a1cb91988ea98eab65bf83f0fc8b"
  end

  url "https://github.com/joncampbell123/dosbox-x/releases/download/dosbox-x-v#{version.csv.first}/dosbox-x-macosx-#{arch}-#{version.csv.second}.zip",
      verified: "github.com/joncampbell123/dosbox-x/"
  name "DOSBox-X"
  desc "Fork of the DOSBox project"
  homepage "https://dosbox-x.com/"

  livecheck do
    url :url
    regex(%r{/dosbox-x-v?(\d+(?:\.\d+)+)/dosbox-x-macosx-#{arch}-([^/]+)\.zip$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "dosbox-x/dosbox-x.app"

  zap trash: [
    "~/Library/Preferences/com.dosbox-x.plist",
    "~/Library/Preferences/mapper-dosbox-x.map",
  ]
end
