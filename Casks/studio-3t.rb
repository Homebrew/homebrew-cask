cask "studio-3t" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"
  livecheckarch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "2022.6.1"

  if Hardware::CPU.intel?
    sha256 "641a16116cc0bd62820cfbed263f1c52cfb9ced9580d1cdacf6912c12ff652b5"
  else
    sha256 "ab99ffe9c1a198c71ba8863f222219d33b330160b711eeba19c13937231a54b3"
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
