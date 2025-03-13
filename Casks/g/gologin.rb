cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "3.3.83"
  sha256 arm:   "b568d06e6ef0d69328e68e3bf75b1b42f3f2360819090b79844eefcad7df4960",
         intel: "ef9a726a96f202440438cc8d188a64c8f97843cca166158b50858566656afe27"

  url "https://releases#{livecheck_arch}.gologin.com/GoLogin-#{version}#{arch}.dmg"
  name "GoLogin"
  desc "Antidetect browser"
  homepage "https://gologin.com/"

  # The `latest-mac.yml` file is served with a `Content-Encoding: aws-chunked`
  # header, which will cause curl to error if the `--compressed` option is used.
  # This checks the version on the first-party download page until we can
  # account for this situation in livecheck.
  livecheck do
    url "https://gologin.com/download/"
    regex(%r{href=.*?/release/gologin[._-]v?(\d+(?:[.-]\d+)+)}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("-", ".") }
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "GoLogin.app"

  zap trash: [
    "~/.gologin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gologin.desktop.sfl*",
    "~/Library/Application Support/GoLogin",
    "~/Library/Preferences/com.gologin.desktop.plist",
    "~/Library/Preferences/com.gologin.orbita.plist",
    "~/Library/Saved Application State/com.gologin.desktop.savedState",
    "~/Library/Saved Application State/com.gologin.orbita.savedState",
  ]
end
