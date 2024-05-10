cask "jamie" do
  arch arm: "-arm64"

  version "4.0.9"
  sha256 arm:   "04302560792bd1ffc5a29f90e64d53ff36cefb6b33d4be522feb793a92d985a4",
         intel: "3e07815960cdb4178b6414c298761cdb4622494463438f43e8bc3d7d271b97dc"

  url "https://github.com/louismorgner/jamie-release/releases/download/v#{version}/jamie-#{version}#{arch}.dmg",
      verified: "github.com/louismorgner/jamie-release/"
  name "jamie"
  desc "AI-powered meeting notes"
  homepage "https://meetjamie.ai/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "jamie.app"

  zap trash: "~/Library/Application Support/jamie"
end
