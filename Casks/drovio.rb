cask "drovio" do
  version "3.1.5"
  sha256 "6fdfc0559f117132b287b87a98428be8ca7970d5f55d0ff2f80faa9425b75260"

  url "https://repository.drovio.com/stable/drovio/macos/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/macos/latest_version/release.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
