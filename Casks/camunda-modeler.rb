cask "camunda-modeler" do
  version "4.8.0"
  sha256 "df0b9d8f45dbefe57ad3376975aad592ae6f25fe6b883df38948796a2ae5710e"

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
