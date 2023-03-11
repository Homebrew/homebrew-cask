cask "blurscreen" do
  version "1.0,9"
  sha256 :no_check

  url "https://www.blurscreen.app/assets/BlurScreen-v2.pkg"
  name "BlurScreen"
  desc "Blur any part of your screen"
  homepage "https://www.blurscreen.app/"

  livecheck do
    url "https://www.blurscreen.app/update/mac/blurscreen.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "BlurScreen-v2.pkg"

  postflight do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    retries ||= 3
    ohai "The BlurScreen package postinstall script launches the BlurScreen app" unless retries < 3
    ohai "Attempting to close BlurScreen.app to avoid unwanted user intervention" unless retries < 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/BlurScreen.app"]

  rescue RuntimeError
    sleep 1
    retry unless (retries -= 1).zero?
    opoo "Unable to forcibly close BlurScreen.app"
  end

  uninstall quit:    "com.sanskar.blurscreen",
            pkgutil: "com.sanskar.blurscreen",
            delete:  "/Applications/BlurScreen.app"

  zap trash: [
    "~/Library/Caches/com.sanskar.blurscreen",
    "~/Library/HTTPStorages/com.sanskar.blurscreen",
    "~/Library/Preferences/com.sanskar.blurscreen.plist",
  ]
end
