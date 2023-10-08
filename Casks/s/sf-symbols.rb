cask "sf-symbols" do
  on_big_sur do
    version "4"
    sha256 "479b66ce7eb308ca0eff826675325e11e7932fcca407d065261822be5c2ec8cb"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "5"
    sha256 "e9db5caf0458d6a107aae64f6f09c4a360a672e34df59905a3cae7ffc4be72d3"

    url "https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-#{version}.dmg"

    livecheck do
      url "https://developer.apple.com/sf-symbols/"
      regex(%r{href=.*?/SF-Symbols-(\d+(?:\.\d+)*)\.dmg}i)
    end
  end

  name "SF Symbols"
  desc "Tool that provides consistent, highly configurable symbols for apps"
  homepage "https://developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "SF Symbols.pkg"

  uninstall pkgutil: "com.apple.pkg.SFSymbols"

  zap trash: "~/Library/Preferences/com.apple.SFSymbols.plist"
end
