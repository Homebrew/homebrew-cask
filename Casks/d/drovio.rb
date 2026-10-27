cask "drovio" do
  version "3.7.0"
  sha256 "a384fba726ba5c144f9ae64cef0bfff267d7e763693987fa57910cba28924fa4"

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
