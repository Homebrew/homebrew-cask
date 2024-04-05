cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2024a"
  sha256 arm:   "5a8a030bfd599073a1f900303bc1fa5c4e4c730b00ffc2a90bc4f6301f89411c",
         intel: "0bbed1734d0e6a9a018f901243da86cacaca5fb974bc6325885e257ff8818f8f"

  url "https://downloads.sourceforge.net/gretl/gretl-#{version}-macos-#{arch}.pkg"
  name "gretl"
  desc "Software package for econometric analysis"
  homepage "https://gretl.sourceforge.net/"

  livecheck do
    url "https://gretl.sourceforge.net/osx.html"
    regex(/gretl[._-]v?(\d+\w)[._-]macos[._-]#{arch}\.pkg/i)
    strategy :page_match
  end

  pkg "gretl-#{version}-macos-#{arch}.pkg"

  uninstall pkgutil: "net.sourceforge.gretl.base.pkg"

  zap trash: [
        "~/.gretl",
        "~/Library/Application Support/gretl",
      ],
      rmdir: "~/gretl"
end
