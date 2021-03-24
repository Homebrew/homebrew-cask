cask "drovio" do
  version "3.0.1"
  sha256 "65c6f84f3d7169d79a6bd38d8bdaca393c8e815e59a89acc3fb810668e369610"

  url "https://repository.drovio.com/stable/drovio/macos/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/macos/latest_version/release.json"
    strategy :page_match
    regex(/"version":\s*"(\d+(?:\.\d+)*)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
