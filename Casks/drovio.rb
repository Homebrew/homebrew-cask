cask "drovio" do
  version "3.0.2"
  sha256 "a954566827b1d15cdb1777567c9d831951a2ddb3008f9e7bcb6873e8e72ffde9"

  url "https://repository.drovio.com/stable/drovio/macos/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/macos/latest_version/release.json"
    strategy :page_match
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)*)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
