cask "geph" do
  version "4.3.0"
  sha256 "3bffcc36865c1f554b309eda6e2ab3a0d5a75dd7a76b071f801d9b91046646c3"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/"

  livecheck do
    skip
  end

  app "Geph.app"
end
