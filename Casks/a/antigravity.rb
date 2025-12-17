cask "antigravity" do
  arch arm: "arm", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "-arm64"

  version "1.12.4,5388582906101760"
  sha256 arm:   "e534a76f29dbf4d986180606386d39b92730dc03553ac9b29a2ad5c90a456095",
         intel: "9f6168a7e6990098256f9085f30a8853d445a68ee29ab9fc5e51892b3bb96131"

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
