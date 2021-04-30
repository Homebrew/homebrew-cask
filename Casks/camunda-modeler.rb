cask "camunda-modeler" do
  version "4.7.0"
  sha256 "f5ada5c02117300260068b81a07e84f76c391cdc3e28c468c543657cccc739bc"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  name "Camunda Modeler"
  desc "Workflow and Decision Automation Platform"
  homepage "https://camunda.org/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    strategy :page_match
    regex(%r{href=.*?/camunda-modeler-(\d+(?:\.\d+)*)-mac\.zip}i)
  end

  app "Camunda Modeler.app"
end
