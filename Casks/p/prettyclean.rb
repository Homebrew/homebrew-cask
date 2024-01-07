cask "prettyclean" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.38"
  sha256 arm:   "1832d6ffdbe0fcbffe35c3b2f6ac4031e7e8ce93a7c564124914888ebfb43885",
         intel: "bc7512ff7544d8522ebd1ac0c13e94da8661dd6a5772bda33d68a9145be73436"

  url "https://downloads.jmotor.org/prettyclean/v#{version}/darwin-#{arch}/PrettyClean_#{version}_#{arch.gsub("86_", "")}.dmg",
      verified: "downloads.jmotor.org/"
  name "PrettyClean"
  desc "Easy to use Disk Cleanup Tools"
  homepage "https://www.prettyclean.cc/"

  livecheck do
    url "https://www.prettyclean.cc/en/download"
    regex(/href=.*?PrettyClean[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "PrettyClean.app"

  zap trash: [
    "~/Library/Caches/cc.prettyclean.PrettyClean",
    "~/Library/Logs/PrettyClean",
    "~/Library/WebKit/cc.prettyclean.PrettyClean",
  ]
end
