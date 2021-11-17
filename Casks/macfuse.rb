cask "macfuse" do
  version "4.2.1"
  sha256 "bd3abba91a8c16005eb3937ad492e49275e60db429bbecd30d54769c191e0699"

  url "https://github.com/osxfuse/osxfuse/releases/download/macfuse-#{version}/macfuse-#{version}.dmg",
      verified: "github.com/osxfuse/osxfuse/"
  name "macFUSE"
  desc "File system integration"
  homepage "https://osxfuse.github.io/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/macfuse-(\d+(?:\.\d+)*)\.dmg}i)
  end

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

  caveats do
    kext
  end
end
