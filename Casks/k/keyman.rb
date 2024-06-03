cask "keyman" do
  version "17.0.326"
  sha256 "b14c1a63b1c20a3ae0413fb82fe7ecb5fdbd1c964ea0759806b18c23af2d4bc0"

  url "https://downloads.keyman.com/mac/stable/#{version}/keyman-#{version}.dmg"
  name "Keyman"
  desc "Reconfigures keyboard to type in another language"
  homepage "https://keyman.com/"

  livecheck do
    url "https://downloads.keyman.com/mac/stable/"
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

    Before uninstalling Keyman, it is also suggested to manually remove the
    input method. For further details, see the following links:

    https://help.keyman.com/products/mac/current-version/start/install-keyman
    https://help.keyman.com/products/mac/current-version/troubleshooting/uninstall-keyman
  EOS
end
