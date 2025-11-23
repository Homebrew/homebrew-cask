cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2025c"
  sha256 arm:   "605ed6081ff984d20b8ff63943af4661d263de5de4d6f4a2518fa93f811a28aa",
         intel: "177fbd34a61fb74e028ce9e791734a154c9b8b0032ca921daa1f6564dbf8e0f3"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-#{arch}.pkg"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/gretl/rss?path=/gretl"
    regex(%r{url=.*?/gretl[._-]v?(\d+(?:\.\d+)*[a-z]?)[._-]macos[._-]#{arch}\.pkg}i)
  end

  pkg "gretl-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"

  zap trash: [
        "~/.gretl",
        "~/Library/Application Support/gretl",
      ],
      rmdir: "~/gretl"
end
