cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2026a"
  sha256 arm:   "d13afc263e7c6eec123f5887ef0fa1480559ef10f0fd12f118071eeb85cd74d5",
         intel: "ca707b8eef3502a0d0681b65a2077d8d0a35f7167a4b5f7c47263ff4e81c17f0"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-#{arch}.pkg"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/gretl/rss?path=/gretl"
    regex(%r{url=.*?/gretl[._-]v?(\d+(?:\.\d+)*[a-z]?)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on macos: ">= :big_sur"

  pkg "gretl-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"

  zap trash: [
        "~/.gretl",
        "~/Library/Application Support/gretl",
      ],
      rmdir: "~/gretl"
end
