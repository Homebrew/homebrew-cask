cask "jenkins-menu" do
  version "0.2.0"
  sha256 "dc2b69ab27b99ed0b0c165ade90b504b7c8201213b5334c6d927affd8cf106b4"

  url "https://github.com/qvacua/jenkins-menu/releases/download/v#{version}/Jenkins.Menu-#{version}.zip"
  appcast "https://github.com/qvacua/jenkins-menu/releases.atom"
  name "Jenkins Menu"
  homepage "https://github.com/qvacua/jenkins-menu/"

  app "Jenkins Menu.app"
end
