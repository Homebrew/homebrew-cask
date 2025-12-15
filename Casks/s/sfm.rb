cask "sfm" do
  version "1.12.12"
  sha256 "32ebc14def5125e70723559d313cf71f22c51874639456012ae598a4e5936fcb"

  url "https://github.com/SagerNet/sing-box/releases/download/v#{version}/SFM-#{version}-universal.dmg",
      verified: "github.com/SagerNet/sing-box/"
  name "SFM"
  desc "Standalone client for sing-box, the universal proxy platform"
  homepage "https://sing-box.sagernet.org/"

  # Upstream is unable to publish the standalone version of the macOS client, so
  # we have to temporarily check all releases to find the newest version with an
  # SFM dmg. TODO: Remove this `livecheck` block or switch to `GithubLatest`
  # once this is resolved.
  livecheck do
    url :url
    regex(/SFM[._-]v?(\d+(?:\.\d+)+)(?:[._-]universal)?\.dmg/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["browser_download_url"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on macos: ">= :ventura"

  app "SFM.app"

  uninstall quit:       "io.nekohasekai.sfa.independent",
            login_item: "SFM"

  zap trash: "~/Library/Group Containers/group.io.nekohasekai.sfa"
end
