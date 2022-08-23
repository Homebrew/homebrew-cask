cask "drovio" do
  version "3.3.3"
  sha256 "45513efec3e8774322c15e094d63a5bf46093f969cf0fa6979bc103171653bd4"

  url "https://repository.drovio.com/stable/drovio/macos_universal/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/macos_universal/latest_version/release.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
