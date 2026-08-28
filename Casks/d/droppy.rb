cask "droppy" do
  version "15.0.0-beta.6"
  sha256 "df16ccab8277d0de84948b4bca2f012698cda65af9420519565e0829b2810f73"

  url "https://droppy-releases.jordylegrand.workers.dev/app-releases/beta/Droppy-#{version}.dmg"
  name "Droppy"
  desc "Drag and drop file shelf"
  homepage "https://getdroppy.app/"

  livecheck do
    url "https://droppy-releases.jordylegrand.workers.dev/app-releases/beta/latest.json"
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
