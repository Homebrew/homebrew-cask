cask "gologin" do
  arch arm: "-arm64"
  livecheck_arch = on_arch_conditional arm: "-arm"

  version "3.4.7"
  sha256 arm:   "0144d8b5bd227e468ed4c62b19d67b6b1ae861631166f468d91b6fc0a3fa83d1",
         intel: "e981954de0205b8d444053dcdebfca65c46e74314ad2405695557533e14aab95"

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
