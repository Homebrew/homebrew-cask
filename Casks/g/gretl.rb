cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2025a"
  sha256 arm:   "6f3799e5b4dc8b99c0254aa9b661da35446fef6864a4b7c04b4eb83757681b2a",
         intel: "47e6e8cd2804fd01f3c08f8c81307ea939b19c7146c79aacc8bba33c3dca0ed3"

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
