cask "keyman" do
  version "17.0.334"
  sha256 "a5295b06773cc7a1d486e51f34f13fb9b64cdef4ff8df70f3e6e698db53a3ee0"

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
