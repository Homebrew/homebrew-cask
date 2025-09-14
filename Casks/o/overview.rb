cask "overview" do
  version "1.2.2-beta"
  sha256 "74399dd99f472d07879a474654a1f7455d31c2aec67e8a413ff725575062501a"

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

  zap trash: "~/Library/Preferences/io.williampierce.Overview.plist"
end
