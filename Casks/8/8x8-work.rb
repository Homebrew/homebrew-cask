cask "8x8-work" do
  arch arm: "-arm64"

  version "8.14.2-6"
  sha256 arm:   "c85986642bf817b1d92eadf57c3b7582913ae2395f2a33bf5a1d9cc4c89f5385",
         intel: "a70473ae9415fc764d3ed4c68c8c72dce3edd971808e985795d69e9a9720025c"

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
