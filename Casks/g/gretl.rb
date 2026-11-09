cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2026d"
  sha256 arm:   "3f410e12a7a9bbe2c0938c000a0d5762c062eb83b0b2915c651e159e62f7e1e5",
         intel: "49a678f9d50d4d0573cf8cbef1f8721450780fd8e8b93b62be46428176b76eaf"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-#{arch}.pkg"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/gretl/rss?path=/gretl"
    regex(%r{url=.*?/gretl[._-]v?(\d+(?:\.\d+)*[a-z]?)[._-]macos[._-]#{arch}\.pkg}i)
  end

  depends_on :macos

  pkg "gretl-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"

  zap trash: [
        "~/.gretl",
        "~/Library/Application Support/gretl",
      ],
      rmdir: "~/gretl"
end
