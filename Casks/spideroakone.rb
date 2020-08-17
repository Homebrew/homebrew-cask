cask "spideroakone" do
  version :latest
  sha256 :no_check

  if MacOS.version <= :sierra
    url "https://spideroak.com/release/spideroak/osx"
  elsif MacOS.version <= :high_sierra
    url "https://spideroak.com/release/spideroak/osx_hs"
  else
    url "https://spideroak.com/release/spideroak/osx"
  end
  name "SpiderOakOne"
  homepage "https://spideroak.com/"

  pkg "SpiderOakONE.pkg"

  uninstall signal:  [
    ["TERM", "com.spideroak.orange.client"],
  ],
            pkgutil: "org.python.python"

  zap trash: "~/Library/Application Support/SpiderOakONE"
end
