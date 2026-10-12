cask "gretl" do
  arch arm: "arm64", intel: "intel"

  version "2026c"
  sha256 arm:   "356158e30c8c7a098f6a4678e7cbc03e08deaeb1dff390d9426d4424a60e2b45",
         intel: "74352fc8fb3224453ce45e4e94f5fd3839f5b15858f1e8a1d45a9e7996733ad3"

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
