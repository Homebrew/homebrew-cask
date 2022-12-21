cask "openlens" do
  arch arm: "-arm64"

  version "6.2.5"
  sha256 arm:   "673a4ad49bb108bd1b995bf0d3eda971254ab6da4f54ad65f067208c8cde99db",
         intel: "e680ca5f0091663435696eff4da6666007d7bc8cb69078f56d1b7d7674cca296"

  url "https://github.com/MuhammedKalkan/OpenLens/releases/download/v#{version}/OpenLens-#{version}#{arch}.dmg"
  name "OpenLens"
  desc "Open source build of Lens Kubernetes IDE"
  homepage "https://github.com/MuhammedKalkan/OpenLens/"

  auto_updates true

  app "OpenLens.app"

  zap trash: [
    "~/Library/Application Support/OpenLens",
    "~/Library/Logs/OpenLens",
  ]
end
