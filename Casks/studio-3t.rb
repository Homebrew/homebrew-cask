cask "studio-3t" do
  arch arm: "-aarch64"
  livecheckarch = on_arch_conditional arm: "_aarch64"

  version "2022.7.1"

  on_intel do
    sha256 "ed39cf3f1b18f0181799d372acc699a1aa29330394952611d02be1409420bddb"
  end
  on_arm do
    sha256 "447b6e3fae8dfbd2d6e1f39a3fb4ffa2e002fe5d5aa022219fead9a43c7a7082"
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
