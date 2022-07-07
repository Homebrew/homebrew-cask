cask "drovio" do
  version "3.3.1"
  sha256 "55ad7aa97e12aacd616b167b3baf991e7dc09a07be5a09af4756cb22a22a35bf"

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
