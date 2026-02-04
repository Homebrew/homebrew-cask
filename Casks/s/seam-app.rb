cask "seam-app" do
  version "0.1.2"
  sha256 "2e8f287c925fc71faf9bcdf6e6e1cf3a625d7e30f41a26de542abf7c79496f2b"

  url "https://releases.getseam.app/#{version}/Seam.dmg"
  name "Seam"
  desc "Productivity-first Dynamic Island for your Notch"
  homepage "https://getseam.app/"

  livecheck do
    url "https://releases.getseam.app/latest/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  # Download url is unreachable due to Cloudflare protections
  disable! date: "2026-02-04", because: :unreachable

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Seam.app"

  zap trash: [
    "~/Library/Caches/app.seam",
    "~/Library/Logs/Seam",
    "~/Library/Preferences/seam.app.plist",
  ]
end
