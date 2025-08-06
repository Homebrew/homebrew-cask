cask "tla+-toolbox" do
  version "1.7.4"
  sha256 "258677703e28a65d2d85c75388756a51198041a2555923e52ad5d6925f5c5bd7"

  url "https://github.com/tlaplus/tlaplus/releases/download/v#{version}/TLAToolbox-#{version}-macosx.cocoa.x86_64.zip",
      verified: "github.com/tlaplus/tlaplus/"
  name "TLA+ Toolbox"
  desc "IDE for TLA+"
  homepage "https://lamport.azurewebsites.net/tla/toolbox.html"

  # Not every GitHub release provides a file for macOS, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^TLAToolbox[._-]v?(\d+(?:\.\d+)+)[._-]macosx[._-]cocoa[._-]x86_64\.(?:dmg|pkg|zip)$/i)
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

  app "TLA+ Toolbox.app"

  caveats do
    requires_rosetta
  end
end
