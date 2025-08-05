cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2025b"
  sha256 arm:   "1be3b2b497c25b5062b6f159eb5cb587c96ce92f0b2a482f278bb824fa26e444",
         intel: "29e16e08ed1e887f0e2507e4cf3106c4f35b26d4472a6027259f4d20ed02498c"

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
