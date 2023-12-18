cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2023c"
  sha256 arm:   "6e5f499a21cb2d1dfc356c165b95a92b87f55f7d9a43c50a848896fc8ecd661c",
         intel: "ef4fefa3459bf6c02830c3f76a730acfc665c4f9ba7ce1190e34321ade922598"

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
