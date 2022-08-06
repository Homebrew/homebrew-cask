cask "keyman" do
  version "15.0.268"
  sha256 "8a2690d93a790b596e0aea0f46e92ae2d1cd7699e4138162dac65d28c89e4b56"

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
