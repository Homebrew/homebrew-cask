cask "prettyclean" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.38"
  sha256 "bc7512ff7544d8522ebd1ac0c13e94da8661dd6a5772bda33d68a9145be73436"

  url "https://downloads.jmotor.org/prettyclean/v#{version}/darwin-#{arch}/PrettyClean_#{version}_#{arch.gsub("86_", "")}.dmg",
      verified: "downloads.jmotor.org/"
  name "prettyclean"
  desc "Easy to use Disk Cleanup Tools"
  homepage "https://www.prettyclean.cc/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["cc.prettyclean.PrettyClean"].short_version
    end
  end

  depends_on macos: ">=:high_sierra"

  app "PrettyClean.app"

  zap trash: [
    "~/Library/Caches/cc.prettyclean.PrettyClean",
    "~/Library/Logs/PrettyClean",
    "~/Library/WebKit/cc.prettyclean.PrettyClean",
  ]
end
