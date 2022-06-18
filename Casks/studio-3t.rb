cask "studio-3t" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"
  livecheckarch = Hardware::CPU.intel? ? "" : "_aarch64"

  version "2022.5.0"

  if Hardware::CPU.intel?
    sha256 "251c3d8c3a97317f711062dc2fed3bb5866b782f3564e451e67de3f12464cd6b"
  else
    sha256 "3ce67da2360c9c1d190dbaa8548df6931a52f961f33367f381dbf0aa21e45aa9"
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
