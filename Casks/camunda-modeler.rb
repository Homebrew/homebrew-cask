cask "camunda-modeler" do
  version "4.5.0"
  sha256 "d69eb98272bc117232a2a09e6f764be31f6128fb757049dcd47439273121bb9f"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  name "Camunda Modeler"
  homepage "https://camunda.org/"

  livecheck do
    url "https://camunda.com/download/modeler/"
    strategy :page_match
    regex(%r{href=.*?/camunda-modeler-(\d+(?:\.\d+)*)-mac\.zip}i)
  end

  app "Camunda Modeler.app"
end
