cask "droppy" do
  version "16.0.1"
  sha256 "727f1a5876dc5a99cbc0a9bc2008e2089b3615ab44d04fd6958c13f1455e0093"

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
