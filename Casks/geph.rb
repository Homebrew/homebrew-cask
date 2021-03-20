cask "geph" do
  version "4.2.5"
  sha256 "e6c4866eb31d55c944473d940f63aa971dcfddf86eda5e3fb72c6f44b0065261"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/"

  app "Geph.app"
end
