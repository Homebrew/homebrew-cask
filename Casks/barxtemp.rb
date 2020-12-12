cask "barxtemp" do
  if MacOS.version <= :high_sierra
    version "1.3.2"
    sha256 "85c8347ab8e7cbc8e7cf639317f3ff5df75feb9420bf94596dcfa05ac5914d16"
  else
    version "1.3.3"
    sha256 "232286bc63a136ceca759addb6108a5b66d2b18d1db1df728c80296ec5847c65"
  end

  # github.com/Gabriele91/barXtemp/ was verified as official when first introduced to the cask
  url "https://github.com/Gabriele91/barXtemp/releases/download/#{version}/barXtemp.app.zip"
  appcast "https://github.com/Gabriele91/barXtemp/releases.atom"
  name "barXtemp"
  desc "Simple app to get the computer temperature"
  homepage "https://gabriele91.github.io/barXtemp/"

  depends_on macos: ">= :yosemite"

  app "barXtemp.app"
end
