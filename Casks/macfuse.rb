cask "macfuse" do
  version "4.3.1"
  sha256 "407fb884b57cd2c1437af250ff215d9a5bd80764b489f6389382302e5a00c5eb"

  url "https://github.com/osxfuse/osxfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/osxfuse/osxfuse/"
  name "macFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/macfuse[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
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
