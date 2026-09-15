cask "drovio" do
  version "3.6.2"
  sha256 "da44a497594b49f33e9cdcc632454d692d6f1347e64badf50479bf9c1c1e1803"

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

  zap trash: "~/Library/Application Support/Drovio"
end
