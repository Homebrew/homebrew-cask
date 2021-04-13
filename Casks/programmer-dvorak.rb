cask "programmer-dvorak" do
  version "1.2.12"
  sha256 "1048706baa0f03a780d392125f06cd9e531386c0520b617169aa9e18ec2b8e9e"

  url "https://kaufmann.no/downloads/macos/ProgrammerDvorak-#{version.dots_to_underscores}.pkg.zip"
  appcast "https://kaufmann.no/roland/dvorak/#downloads",
          must_contain: version.dots_to_underscores
  name "Programmer Dvorak"
  homepage "https://kaufmann.no/roland/dvorak/"

  pkg "Programmer Dvorak v#{version.major_minor}.pkg"

  postflight do
    # clear the layout cache before new layouts are recognized
    system_command "/bin/rm",
                   args: ["-f", "--", "/System/Library/Caches/com.apple.IntlDataCache.le*"],
                   sudo: true
  end

  uninstall pkgutil: "com.apple.keyboardlayout.Programmer Dvorak",
            delete:  [
              "/Library/Keyboard Layouts/Programmer Dvorak.bundle/",
              "/Library/Caches/com.apple.IntlDataCache*",
              "/System/Library/Caches/com.apple.IntlDataCache.le*",
              "/private/var/folders/*/*/-Caches-/com.apple.IntlDataCache.le*",
            ]

  caveats do
    reboot
  end
end
