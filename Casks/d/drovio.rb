cask "drovio" do
  version "3.5.3"
  sha256 "0b94f917682dd3a9f60ba9506604c94fb9ce87f00470f915f13ca63bce2ee5c1"

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
  depends_on macos: ">= :big_sur"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
