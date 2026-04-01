cask "overview" do
  version "1.2.3-beta"
  sha256 "cb5a741a155fc709e4179675d2651df0ead64a1d78ed8091bf5a1e298acf044f"

  url "https://williampierce.io/overview/releases/v#{version}/Overview.dmg"
  name "Overview"
  desc "Create live window previews for any application"
  homepage "https://williampierce.io/overview/"

  livecheck do
    url "https://github.com/williamcpierce/Overview"
    regex(/^v?(\d+(?:\.\d+)+(?:-beta)?)$/i)
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Overview.app"

  zap trash: [
    "~/Library/HTTPStorages/io.williampierce.Overview",
    "~/Library/Preferences/io.williampierce.Overview.plist",
  ]
end
