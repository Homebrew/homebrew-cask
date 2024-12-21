cask "bindiff" do
  version "8"
  sha256 "2962fd337529a59fe4ba3b4a5596be53bfacd1bd0a3952ea7bedd6276eeb4db8"

  url "https://github.com/google/bindiff/releases/download/v#{version}/BinDiff#{version}.dmg",
      verified: "github.com/google/bindiff/"
  name "BinDiff"
  desc "Binary diffing tool"
  homepage "https://zynamics.com/bindiff.html"

  pkg "Install BinDiff.pkg"

  uninstall pkgutil: "com.google.security.zynamics.bindiff"

  zap trash: [
    "/Library/Application Support/BinDiff",
    "~/Library/Preferences/com.google.security.zynamics.bindiff.plist",
    "~/Library/Saved Application State/com.google.security.zynamics.bindiff.savedState",
  ]
end
