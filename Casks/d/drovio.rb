cask "drovio" do
  version "3.6.0"
  sha256 "9107e90b80b3cacc0e2d9b14f7dc866cae568ad7588862ce3b91e96d4d7ebb3f"

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
