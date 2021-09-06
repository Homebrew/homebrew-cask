cask "camunda-modeler" do
  version "4.9.0"
  sha256 "439fbb98f518edccab70b4ef19b1ad924331c08c6874eb9bee95ee004b60a217"

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
