cask "droppy" do
  version "16.0.0"
  sha256 "c088ef907a4fcde537fda083859cc1dfe0d7f5d3d50273e3e044238ef1c6a259"

  url "https://droppy-releases.jordylegrand.workers.dev/app-releases/Droppy-#{version}.dmg"
  name "Droppy"
  desc "Drag and drop file shelf"
  homepage "https://getdroppy.app/"

  livecheck do
    url "https://droppy-releases.jordylegrand.workers.dev/app-releases/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Droppy.app"

  zap trash: [
    "~/Library/Application Support/Droppy",
    "~/Library/Preferences/iordv.Droppy.plist",
  ]
end
