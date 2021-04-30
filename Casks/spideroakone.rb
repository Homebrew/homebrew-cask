cask "spideroakone" do
  version "7.5.0.10333"
  sha256 :no_check

  if MacOS.version <= :sierra
    url "https://spideroak.com/release/spideroak/osx"
  elsif MacOS.version <= :high_sierra
    url "https://spideroak.com/release/spideroak/osx_hs"
  else
    url "https://spideroak.com/release/spideroak/osx"
  end

  name "SpiderOakOne"
  desc "Cloud backup and storage"
  homepage "https://spideroak.com/"

  livecheck do
    url :url
    strategy :header_match
  end

  pkg "SpiderOakONE.pkg"

  uninstall signal:  [
    ["TERM", "com.spideroak.orange.client"],
  ],
            pkgutil: "org.python.python"

  zap trash: "~/Library/Application Support/SpiderOakONE"
end
