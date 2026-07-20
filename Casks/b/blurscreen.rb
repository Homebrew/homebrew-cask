cask "blurscreen" do
  version "1.0"
  sha256 :no_check

  url "https://www.blurscreen.app/assets/BlurScreen-v2.pkg"
  name "BlurScreen"
  desc "Blur any part of your screen"
  homepage "https://www.blurscreen.app/"

  livecheck do
    url "https://www.blurscreen.app/update/mac/blurscreen.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  pkg "BlurScreen-v2.pkg"

  postflight_steps do
    # Description: Ensure console variant of postinstall is non-interactive.
    # This is because `open "$APP_PATH"&` is called from the postinstall
    # script of the package and we don't want any user intervention there.
    terminate_process(
      "/Applications/BlurScreen.app",
      match:           :full,
      attempts:        3,
      must_succeed:    false,
      notices:         [
        "The BlurScreen package postinstall script launches the BlurScreen app",
        "Attempting to close BlurScreen.app to avoid unwanted user intervention",
      ],
      failure_message: "Unable to forcibly close BlurScreen.app",
    )
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
