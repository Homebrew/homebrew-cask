cask "tofu" do
  version "3.0.1"
  sha256 :no_check

  url "https://amarsagoo.info/tofu/Tofu.dmg"
  name "Tofu"
  desc "E-reader software"
  homepage "https://amarsagoo.info/tofu/"

  # The homepage lists the current version but the website is gated behind a
  # CAPTCHA, so we can't check it programmatically.
  livecheck do
    skip "Upstream website uses a CAPTCHA"
  end

  depends_on macos: ">= :high_sierra"

  app "Tofu.app"

  zap trash: [
    "~/Library/Application Scripts/com.asagoo.tofu",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.asagoo.tofu.sfl*",
    "~/Library/Containers/com.asagoo.tofu",
  ]
end
