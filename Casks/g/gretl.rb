cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2024c"
  sha256 arm:   "38a1ef15195b0a243e6e45c021196d405ebf3610159a99b5b7f0e2d40eee0615",
         intel: "6018c21d81775a5850c50520df5e51f58fa51ee19bf34148f58982d56499993b"

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
