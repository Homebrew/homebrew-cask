cask "threema-work-2" do
  arch arm: "arm64", intel: "x64"

  version "2.0-beta20"
  sha256 arm:   "f42360bef5a4e6ef3dca494f73a9ce8c36d6a84792f1cf571dc2c098ef8e0e01",
         intel: "a5fa9d954a80af48b6e639106c18a39edeb1ae3ba2fb3704aedff0184b9311a0"

  url "https://releases.threema.ch/desktop/#{version}/threema-work-desktop-v#{version}-macos-#{arch}.dmg"
  name "Threema Work Beta"
  desc "End-to-end encrypted instant messaging (currently only available in iOS)"
  homepage "https://threema.ch/en/work/download-mdw"

  livecheck do
    url "https://releases.threema.ch/desktop/latest-version-work-macos.json"
    strategy :json do |json|
      json["latestVersion"]["version"]
    end
  end

  app "Threema Work Beta.app"

  zap trash: [
    "~/Library/Application Support/ThreemaDesktop/work-live-default/",
  ]
end
