cask "keyman" do
  version "14.0.283"
  sha256 "e529261a0a0a93d9a513dae3d847cd53efdcc7cbc653fab1d3ff2c489241fa8a"

  url "https://downloads.keyman.com/mac/stable/#{version}/keyman-#{version}.dmg"
  name "Keyman"
  desc "Reconfigures keyboard to type in another language"
  homepage "https://keyman.com/"

  livecheck do
    url "https://downloads.keyman.com/mac/stable"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  depends_on macos: ">= :yosemite"

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
