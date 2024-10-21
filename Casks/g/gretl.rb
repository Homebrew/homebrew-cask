cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2024b"
  sha256 arm:   "c7e5c609bfe61057fa8c29c6206e95919c8c43aeef9d948e8fde5bd3c33cebee",
         intel: "bc4027e8a2332a85416ee08e91dea487cdb83808896424448efa936e812b3e7b"

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
