cask "google-antigravity" do
  arch arm: "darwin-arm", intel: "darwin-x64"

  version "1.11.2,6251250307170304"
  sha256 :no_check

  url "https://edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/stable/#{version.csv.first}-#{version.csv.second}/#{arch}/Antigravity.zip",
      verified: "edgedl.me.gvt1.com/edgedl/release2/j0qc3/antigravity/"
  name "Google Antigravity"
  desc "AI Coding Agent IDE"
  homepage "https://antigravity.google/"

  livecheck do
    url "https://antigravity-auto-updater-974169037036.us-central1.run.app/api/update/darwin-arm64/stable/latest"
    strategy :json do |json|
      match = json["url"]&.match(%r{/stable/([\d.]+-(\d+))/})
      next if match.blank?

      "#{match[1].split("-").first},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Antigravity.app"

  zap trash: [
    "~/.antigravity/",
    "~/Library/Application Support/Antigravity",
    "~/Library/Caches/com.google.antigravity",
    "~/Library/HTTPStorages/com.google.antigravity",
    "~/Library/Preferences/com.google.antigravity.plist",
  ]
end
