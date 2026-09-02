cask "droppy" do
  version "14.2.0"
  sha256 "4a35effe7755549dc5edb4dc385851b436851633da8584454e1896aa755d0c51"

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
