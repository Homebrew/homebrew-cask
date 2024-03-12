cask "keyman" do
  version "16.0.146"
  sha256 "3eb269e4e6cf7bcbc52181a6ac364b99ce20863569baf1f6e7167599403bdca7"

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
