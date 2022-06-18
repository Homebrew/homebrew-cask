cask "keyman" do
  version "15.0.260"
  sha256 "7d57a9e1dc01446c90f546a899a20fa66080f3686b29d4023901cefde5caaf76"

  url "https://downloads.keyman.com/mac/stable/#{version}/keyman-#{version}.dmg"
  name "Keyman"
  desc "Reconfigures keyboard to type in another language"
  homepage "https://keyman.com/"

  livecheck do
    url "https://downloads.keyman.com/mac/stable"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  input_method "Install Keyman.app/Contents/MacOS/Keyman.app"

  uninstall quit: "keyman.inputmethod.Keyman"

  zap trash: [
    "~/Documents/Keyman-Keyboards",
    "~/Library/Caches/keyman.inputmethod.Keyman",
    "~/Library/Preferences/keyman.inputmethod.Keyman.plist",
  ]

  caveats <<~EOS
    You must manually install the keyboard layout under:

       Preferences → Keyboard → Input Sources

    Before uninstalling Keyman, it is also suggested to manually remove the input method.

    See https://help.keyman.com/products/mac/current-version/start/install-keyman.
    and https://help.keyman.com/products/mac/current-version/troubleshooting/uninstall-keyman.
  EOS
end
