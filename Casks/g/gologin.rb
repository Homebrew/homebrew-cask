cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "3.4.6"
  sha256 arm:   "89870e6b020084defbfc352af0cbbf3c7884dabf5b79af674d4250744886f87e",
         intel: "61169656fdbc7173cfd4dd76f486bd9030e3139a41c439c3329d5a42c10c5254"

  url "https://releases#{livecheck_arch}.gologin.com/GoLogin-#{version}#{arch}.dmg"
  name "GoLogin"
  desc "Antidetect browser"
  homepage "https://gologin.com/"

  # The `latest-mac.yml` file is served with a `Content-Encoding: aws-chunked`
  # header, which will cause curl to error if the `--compressed` option is used.
  # This checks the version on the first-party release notes page until we can
  # account for this situation in livecheck.
  livecheck do
    url "https://gologin.com/release-notes/"
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
