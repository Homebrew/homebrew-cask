cask "qwerty-fr" do
  version "0.7.1"
  sha256 "aa036941b3552df47c58e27fc5641835da3ab3df660c4092086a2ea75d36fa28"

  url "https://github.com/qwerty-fr/qwerty-fr/releases/download/v#{version}/qwerty-fr_#{version}_mac.zip",
      verified: "github.com/qwerty-fr/qwerty-fr/"
  name "qwerty-fr keyboard layout"
  desc "QWERTY-based layout. Type EU languages, greek, math, currencies, & more!"
  homepage "https://qwerty-fr.org/"

  livecheck do
    url "https://github.com/qwerty-fr/qwerty-fr/releases/"
    regex(%r{v?(\d+(?:\.\d+)+)/qwerty-fr.*?mac\.zip}i)
    strategy :page_match
  end

  depends_on macos: ">= :sierra"

  artifact "qwerty-fr.bundle", target: "/Library/Keyboard Layouts/qwerty-fr.bundle"

  postflight do
    # clear the layout cache before new layouts are recognized
    system_command "/bin/rm",
                   args: ["-f", "--", "/System/Library/Caches/com.apple.IntlDataCache.le*"],
                   sudo: true
  end

  uninstall delete: [
    "/Library/Keyboard Layouts/qwerty-fr.bundle/",
    "/System/Library/Caches/com.apple.IntlDataCache.le*",
  ]

  caveats do
    reboot
  end
end
