cask "8x8-work" do
  arch arm: "-arm64"

  version "8.17.4-2"
  sha256 arm:   "c5fa8618611670704ae7ed4d954dc13be7e25cd4f7639af449ea62027230764a",
         intel: "de7178c95430bb13a856c2fdabbd83df1e9416201ea027a2b694dcf109bb696d"

  url "https://work-desktop-assets.8x8.com/prod-publish/ga/work#{arch}-dmg-v#{version}.dmg"
  name "8x8_work"
  desc "Communications application with voice, video, chat, and web conferencing"
  homepage "https://www.8x8.com/products/apps"

  livecheck do
    url "https://support-portal.8x8.com/helpcenter/docrenderservice/services/rest/documents/8bff4970-6fbf-4daf-842d-8ae9b533153d"
    regex(/work[._-]dmg[._-]v(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "8x8 Work.app"

  zap trash: "~/Library/Application Support/8x8 Work"
end
