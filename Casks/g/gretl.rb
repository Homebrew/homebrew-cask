cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2023b"
  sha256 arm:   "46db09548782c5ed33b6bd18747b54475e955b69bae81be36c7de8c89eaeb65b",
         intel: "307c0d6ae748c80f9a64f12c827523b6fd7ac32265cb94594afc8a5f45d71cda"

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
