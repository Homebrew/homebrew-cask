cask "sf-symbols" do
  on_big_sur do
    version "4"
    sha256 "479b66ce7eb308ca0eff826675325e11e7932fcca407d065261822be5c2ec8cb"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "5.1"
    sha256 "ec720e940629407cf2a0c856d89b70ab64e8afca23b389931e35237cc28a30ce"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "7"
    sha256 "8507bf849a87e204fda33c7e9ca7eb84b96e04a618de443dfdc321e5b97974ad"

    livecheck do
      url "https://developer.apple.com/sf-symbols/"
      regex(%r{href=.*?/SF-Symbols-(\d+(?:\.\d+)*)\.dmg}i)
    end
  end

  url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"
  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.pkg.SFSymbols"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
