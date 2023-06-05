cask "macfuse" do
  version "4.4.3"
  sha256 "df6611e501c1f5ac838f2febaa8a949ccd7744cebd03db9ccdfa46aec04c9d27"

  url "https://github.com/osxfuse/osxfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/osxfuse/osxfuse/"
  name "macFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  livecheck do
    url "https://osxfuse.github.io/releases/CurrentRelease.plist"
    regex(/macfuse[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "macfuse-dev"
  depends_on macos: ">= :sierra"

  pkg "Extras/macFUSE #{version}.pkg"

  postflight do
    set_ownership ["/usr/local/include", "/usr/local/lib"]
  end

  uninstall pkgutil: [
    "io.macfuse.installer.components.core",
    "io.macfuse.installer.components.preferencepane",
  ]

  zap trash: "/Library/PreferencePanes/macFUSE.prefPane"

  caveats do
    kext
  end
end
