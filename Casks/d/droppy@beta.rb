cask "droppy@beta" do
  version "15.0.0-beta.4"
  sha256 "6986518f56cb9fefd850d3dd6178f1872405c051468e26535400c43650bc64b8"

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

  zap trash: "~/Library/Application Support/Droppy"
end
