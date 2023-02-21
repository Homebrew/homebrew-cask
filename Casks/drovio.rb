cask "drovio" do
  version "3.4.0"
  sha256 "fce88fecc10d7b799c3fa2a3a4797c62dc8d9f749f132ff383098d11eeb806a1"

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
