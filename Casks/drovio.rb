cask "drovio" do
  version "3.1.0"
  sha256 "f31ed87ade483639f86c3c4e63489bae16008aa22b745b5aa8ede346a6dcc12f"

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
