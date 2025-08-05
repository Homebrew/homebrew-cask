cask "drovio" do
  version "3.5.2"
  sha256 "4182975333ba7451bb144bc4c91321339f199e4bd329c8292fb41ffa3901b8a2"

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
  depends_on macos: ">= :mojave"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
