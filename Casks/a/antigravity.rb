cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "1.14.2,6046590149459968"
  sha256 arm:   "014f5eeb231bf5e00837abbc45c47be5d68b542dad3cd969444becbd0bf12860",
         intel: "f516b8ea7d3566140d70dd6825cd5a07b0c899370c08acfdc9b133c6d0ef5ded"

  url "https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/#{version.csv.first}-#{version.csv.second}/darwin-#{arch}/Antigravity.zip",
      verified: "edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/"
  name "Google Antigravity"
  desc "AI Coding Agent IDE"
  homepage "https://antigravity.google/"

  livecheck do
    url "https://antigravity-auto-updater-974169037036.us-central1.run.app/api/update/darwin#{livecheck_arch}/stable/latest"
    regex(%r{/stable/([^/]+)/}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]&.tr("-", ",").to_s
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Antigravity.app"
  binary "#{appdir}/Antigravity.app/Contents/Resources/app/bin/antigravity", target: "agy"

  zap trash: [
    "~/.antigravity/",
    "~/Library/Application Support/Antigravity",
    "~/Library/Caches/com.google.antigravity",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Preferences/com.google.antigravity.plist",
    "~/Library/Saved Application State/com.google.Antigravity.savedState",
  ]
end
