cask "macfuse" do
  version "4.4.0"
  sha256 "db347d5a57d32d8556e82386eea9ef155fd877890eb3db547e49bb137d976a43"

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
