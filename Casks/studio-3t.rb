cask "studio-3t" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"
  livecheckarch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "2022.4.1"

  if Hardware::CPU.intel?
    sha256 "3a4e65a79b07e0be06e9d50f555ec4209ad9bc65439bb03f98278841dcd4c824"
  else
    sha256 "ab56f86ea8c49ce16ca1c1f7a99727524f4b09ee70a943fd10874c5cd2a41350"
  end

  url "https://download.studio3t.com/studio-3t/mac#{arch}/#{version}/Studio-3T.dmg"
  name "Studio 3T"
  desc "IDE, client, and GUI for MongoDB"
  homepage "https://studio3t.com/"

  livecheck do
    url "https://studio3t.com/download-thank-you/?OS=osx#{livecheckarch}"
    regex(%r{/v?(\d+(?:\.\d+)+)/Studio[._-]?3T\.dmg}i)
  end

  auto_updates true

  app "Studio 3T.app"
end
