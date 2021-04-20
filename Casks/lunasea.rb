cask "lunasea" do
  version "5.0.0"
  sha256 "9a7894791d584b9ac142090c034ff7f0fe51bbdf47cab79c38fbf995e6117844"

  url "https://github.com/CometTools/LunaSea/releases/download/#{version}%2B50000018/LunaSea-macOS-release.zip",
      verified: "https://github.com/CometTools/LunaSea/"
  name "LunaSea"
  desc "Controller for all of your self-hosted media software"
  homepage "https://www.lunasea.app/"

  # livecheck do
  #  url :url
  #  strategy :github_latest
  # end

  app "LunaSea.app"
end
