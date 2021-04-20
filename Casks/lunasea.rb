cask "lunasea" do
  version "5.0.0+50000018"
  sha256 "9a7894791d584b9ac142090c034ff7f0fe51bbdf47cab79c38fbf995e6117844"

  url "https://github.com/CometTools/LunaSea/releases/download/#{version}/LunaSea-macOS-release.zip",
      verified: "https://github.com/CometTools/LunaSea/"
  name "LunaSea"
  desc "Controller for all of your self-hosted media software"
  homepage "https://www.lunasea.app/"

  app "LunaSea.app"
end
