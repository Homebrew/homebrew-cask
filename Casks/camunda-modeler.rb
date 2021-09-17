cask "camunda-modeler" do
  version "4.10.0"
  sha256 "20e5cace2e1e07b116fc00e119e18d40f37151e12fe913a63bf94ce73c072d33"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.org/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    regex(%r{href=.*?/camunda[._-]?modeler[._-]?v?(\d+(?:\.\d+)+)[._-]?mac\.zip}i)
  end

  app "Camunda Modeler.app"
end
