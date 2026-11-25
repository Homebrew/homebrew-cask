cask "drovio" do
  version "3.7.2"
  sha256 "ff578b5ce5eb67f1ce53f22a3eb2b6bdc7f54b712cbd6cade48611001ab4466d"

  url "https://repository.drovio.com/stable/drovio/macos_universal/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/macos_universal/latest_version/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio",
      rmdir: "~/Documents/Drovio"
end
