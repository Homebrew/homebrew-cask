cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2026b"
  sha256 arm:   "6b30eb3d39ccd4fcbe31d4039ae2b070d172cebc5984cb17810913dd2f2df776",
         intel: "9b9160de1480660f7f3dc20619cff1ebb647ee805aa4c7bf70ea542b84e994f6"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-#{arch}.pkg"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/gretl/rss?path=/gretl"
    regex(%r{url=.*?/gretl[._-]v?(\d+(?:\.\d+)*[a-z]?)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on macos: :big_sur

  pkg "gretl-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"

  zap trash: [
        "~/.gretl",
        "~/Library/Application Support/gretl",
      ],
      rmdir: "~/gretl"
end
