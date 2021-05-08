cask "drovio" do
  version "3.0.4"
  sha256 "a77ad77d81d9b2e3576978fc0efcfa6a8f0473fa45d0ad203e301252ca977dd7"

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
