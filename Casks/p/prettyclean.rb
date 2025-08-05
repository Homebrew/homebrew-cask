cask "prettyclean" do
  arch arm: "aarch64", intel: "x64"
  arch_folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "0.1.39"
  sha256 arm:   "ba0cc38b5850b30e88ff62390e055e2508ec4d41052e709ecbd73b8c09911c1d",
         intel: "4b1989ec1e85061a71e9cef1583318ec9ed27efb7a64b12a46d8e5879d77ac21"

  url "https://downloads.jmotor.org/prettyclean/v#{version}/darwin-#{arch_folder}/PrettyClean_#{version}_#{arch}.dmg",
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
